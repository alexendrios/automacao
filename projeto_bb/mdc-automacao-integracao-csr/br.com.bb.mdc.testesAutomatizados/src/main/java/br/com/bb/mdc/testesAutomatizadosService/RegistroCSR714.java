package br.com.bb.mdc.testesAutomatizadosService;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import br.com.bb.mdc.testesAutomatizadosEntidade.IdentificacaoCSR714;
import br.com.bb.mdc.testesAutomatizadosEntidade.ImagemCRS714;
import br.com.bb.mdc.testesAutomatizadosEntidade.LoteCSR714;
import br.com.bb.mdc.testesAutomatizadosEntidade.RegistrosCheque;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;
import br.com.bb.util.file.BBFileUtils;

public class RegistroCSR714 {

	private IdentificacaoCSR714 identificacao;
	private RegistrosCheque dadosCheque;
	private ImagemCRS714 dadosImagem;
	private LoteCSR714 dadosLote;
	private String header;
	private String detalhe;
	private String registro;
	private String fichaLote;
	private String trailler;

	private ArrayList<String> listaArquivosTif;
	private ArrayList<String> listaArquivosTxt;

	private final String COD_REMESSA_CSR = "0000010";
	private final String PATH_ARQUIVO_SAIDA = "C:/temp/";

	private ArrayList<String> getListaArquivosTif() {
		return listaArquivosTif;
	}

	private void setListaArquivosTxt(String arquivo) {
		this.listaArquivosTxt.add(arquivo);
	}

	private ArrayList<String> getListaArquivosTxt() {
		return listaArquivosTxt;
	}

	private void setListaArquivosTif(String arquivo) {
		this.listaArquivosTif.add(arquivo);
	}

	private void tratarArquivos(String path) {

		File file = new File(path);
		File[] arquivos = file.listFiles();
		listaArquivosTxt = new ArrayList<String>();
		listaArquivosTif = new ArrayList<String>();

		for (File fileTmp : arquivos) {
			if (fileTmp.getName().endsWith(".txt")) {
				setListaArquivosTxt(fileTmp.getName());
			} else if (fileTmp.getName().endsWith(".tif")) {
				setListaArquivosTif(fileTmp.getName());
			}
		}
	}

	public void gerarCRS714(String data, String path) throws Exception {
		// Setup
		
		identificacao = new IdentificacaoCSR714();
		dadosCheque = new RegistrosCheque();
		dadosImagem = new ImagemCRS714();
		dadosLote = new LoteCSR714();
		registro = "";

		//Configurações das Variáveis
		int sequ = 1;
		identificacao.setDataMovimento(data);
		dadosLote.setDataMovimento(data);
		tratarArquivos(path);

		//Carregando os Objetos
		header = identificacao.montarIdentificacao("header");
		fichaLote = dadosLote.gerarFichaLote("FICHA LOTE");
		trailler = identificacao.montarIdentificacao("TRAILLER");

		//Criação do Arquivo de Saída
		String nomeArquivoSaida = new String();
		nomeArquivoSaida += PATH_ARQUIVO_SAIDA + "CSR714.D" + data.substring(2) + ".R" + COD_REMESSA_CSR;
		FileOutputStream arquivoSaida = new FileOutputStream(new File(nomeArquivoSaida));

		arquivoSaida.write(header.getBytes("Cp1047"));
		sequ++;

		//Criação dos Registro do Cheque
		detalhe = dadosCheque.gerarInformacoesCheque(path, getListaArquivosTxt().get(0).toString());
		dadosImagem.analizarImagem(getListaArquivosTif().get(0).toString());
		
		
		//Refinando dados Referente a Imagem
		File image = new File(path + "\\" + getListaArquivosTif().get(0));
		int imagesize = (int) image.length();
		dadosImagem.setTamanhoImagem(imagesize);
		dadosImagem.setQuantidadeRegistros(dadosImagem.getTamanhoImagem());
		
		
		for (int i = 1; i < dadosImagem.getQuantidadeRegistros() + 1; i++) {

			dadosCheque.setSequencialRegistro(sequ);
			registro = detalhe + Utils.completaZeros(dadosImagem.getQuantidadeRegistros(), 2)
					+ Utils.completaZeros(i, 2) + Utils.completaZeros(dadosImagem.getTamanhoImagem(), 9)
					+ Utils.gerarZeros(9) + dadosImagem.getLadoImagem() + Utils.gerarBrancos(17);
			
			sequ++;
					
			// Faz tratamento na imagem para quebrar em vários registros quando necessário

			ByteBuffer b1 = ByteBuffer.allocate(dadosImagem.getTamanhoImagem());		
			b1.put(BBFileUtils.getInstance().getConteudoArquivo(image));
			int offSet = ((i - 1) * dadosImagem.getTAMANHO_REG_IMAGEM());
			
			int t = 0;
			if (i < dadosImagem.getQuantidadeRegistros()) {
				t = dadosImagem.getTAMANHO_REG_IMAGEM();
			} else {
				t = dadosImagem.getTamanhoImagem() - offSet;
			}
			
			

			ByteBuffer bb = ByteBuffer.allocate(dadosImagem.getTamanhoImagem());
			bb.put(b1.array(), offSet, t);
			System.out.println("|--|--|---||-----------||-----||-|----------------||---|--|---|---|-----------|--|-------|------|--|-----|----------------|-------|---------|--|---|--|---------|---------------------------------------|-|-|--------|--------||----------------");
			System.out.println(registro);
			arquivoSaida.write(registro.getBytes("Cp1047"));
			arquivoSaida.write(bb.array());

		}

		arquivoSaida.write(fichaLote.getBytes("Cp1047"));
		arquivoSaida.write(trailler.getBytes("Cp1047"));
		arquivoSaida.flush();
		arquivoSaida.close();
		System.out.println("Arquivo " + nomeArquivoSaida + " gerado com sucesso.");	

	}

}
