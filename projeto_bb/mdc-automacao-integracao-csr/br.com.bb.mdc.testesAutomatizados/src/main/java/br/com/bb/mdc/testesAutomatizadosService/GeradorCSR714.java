package br.com.bb.mdc.testesAutomatizadosService;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import br.com.bb.util.file.BBFileUtils;

public class GeradorCSR714 {

	static String path = "";
	static String dataMovimento;

	static int sequencialRegistro = 1;

	static final String CAM_COMPE = "000";
	static final String VERSAO = "0001";
	static final String COD_REMESSA_CSR = "0000010";
	static final String tipoRemessa = "2"; // cheques acima
	static final String PATH_ARQUIVO_SAIDA = "C:/temp/";
	static final String arqSaida = "c:\\temp\\CSR\\saida.txt";
	private static final int TAMANHO_REGISTRO = 27648;
	private static final int TAMANHO_REG_DADOS = 240;
	private static final int TAMANHO_REG_IMAGEM = 27408;
	private File fileEntrada;
	private int registroAtualEntrada = 1;
	private FileInputStream finEntrada;
	private int qtdRegistrosEntrada;
	private static String nomeArquivo;
	private BufferedReader br;

	private void setNomeArquivo(String arquivo) {
		GeradorCSR714.nomeArquivo = arquivo;
	}

	public String getNomeArquivo() {
		return GeradorCSR714.nomeArquivo;
	}

	private String getPath(String arquivo) {
		String caminho = "C:\\temp\\" + arquivo;
		return caminho;
	}

	private String getDataMovimento(String data) {
		String dt = data;
		if (!dt.matches("\\d{8}")) {
			throw new IllegalArgumentException("A data de movimento deve estar no formato AAAAMMDD");
		}
		return dt;
	}

	// representa um registro lido do arquivo de entrada
	class Registro {
		Registro(String dadosRegistro, byte[] imagemRegistro) {
			this.dadosRegistro = dadosRegistro;
			this.imagemRegistro = imagemRegistro;
		}

		String dadosRegistro;
		byte[] imagemRegistro;

		public String getDadosRegistro() {
			return dadosRegistro;
		}

		public byte[] getImagemRegistro() {
			return imagemRegistro;
		}
	}

	public GeradorCSR714(String data, String arquivo) throws Exception {
		// Busca caminho do arquivo ou do diretório
		path = getPath(arquivo);
		String local = "C:\\temp\\";
		// Busca data do movimento
		dataMovimento = getDataMovimento(data);

		// Valida se caminho é diretório ou arquivo
		File escolhaUsuario = new File(path);
		if (escolhaUsuario.isDirectory()) {
			montarArquivo();
		} else if (escolhaUsuario.isFile()) {
			montarArquivoPorImagens(local);

		}
	}

	/**
	 * Monta o header do arquivo CSR714
	 * 
	 * @return
	 */
	private String gerarHeader() {
		String header = new String();
		header = gerarZeros(47) + "CSR714" + CAM_COMPE + VERSAO + gerarBrancos(4) + GeradorCSR714.tipoRemessa
				+ GeradorCSR714.dataMovimento + gerarBrancos(25) + COD_REMESSA_CSR + gerarBrancos(45) + "0000000001"
				+ gerarBrancos(27488);

		return header;
	}

	/**
	 * Gera o trailer do arquivo
	 * 
	 * @return
	 */
	private String gerarTrailer() {
		String trailer = new String();

		trailer += gerarNoves(47) + "CSR714" + CAM_COMPE + VERSAO + gerarBrancos(4) + GeradorCSR714.tipoRemessa
				+ GeradorCSR714.dataMovimento + gerarBrancos(25) + COD_REMESSA_CSR + gerarBrancos(45)
				+ gerarSequencialTrailer() + gerarBrancos(27488);

		if (trailer.length() != 27648) {
			throw new RuntimeException("Ficha de lote maior que 27648");
		}
		return trailer;
	}

	/**
	 * Gerar ficha de lote
	 * 
	 * @return
	 */
	private String gerarFichaLote() {
		String fichaLote = new String();

		fichaLote += "018001" + gerarNoves(27) + gerarZeros(17) + gerarBrancos(5) + "001" + gerarBrancos(23)
				+ dataMovimento + "0000001" + "999" + "001981" + gerarBrancos(35) + "018" + "0001" + "030"
				+ gerarSequencialFichaLote() + gerarBrancos(27488);

		if (fichaLote.length() != 27648) {
			throw new RuntimeException("Ficha de lote maior que 27648");
		}

		return fichaLote;
	}

	/**
	 * Monta o arquivo CSR714
	 * 
	 * @throws UnsupportedEncodingException
	 * @throws IOException
	 */
	private void montarArquivo() throws UnsupportedEncodingException, IOException {

		fileEntrada = new File(path);
		finEntrada = new FileInputStream(fileEntrada);
		qtdRegistrosEntrada = (int) fileEntrada.length() / TAMANHO_REGISTRO;

		String nomeArquivoSaida = new String();
		nomeArquivoSaida += PATH_ARQUIVO_SAIDA + "CSR714.D" + dataMovimento.substring(2) + ".R" + COD_REMESSA_CSR;
		FileOutputStream arquivoSaida = new FileOutputStream(new File(nomeArquivoSaida));

		arquivoSaida.write(gerarHeader().getBytes("Cp1047"));

		while (temProximoRegistro()) {
			arquivoSaida.write(gerarRegistro(lerProximoRegistro()));
		}
		arquivoSaida.write(gerarFichaLote().getBytes("Cp1047"));
		arquivoSaida.write(gerarTrailer().getBytes("Cp1047"));
		arquivoSaida.flush();
		arquivoSaida.close();
		finEntrada.close();
		System.out.println("Arquivo " + nomeArquivoSaida + " gerado com sucesso.");
		setNomeArquivo(nomeArquivoSaida);
	}

	/**
	 * Monta o arquivo CSR714 a partir de imagens
	 * 
	 * @throws Exception
	 */
	private void montarArquivoPorImagens(String path) throws Exception {
		String nomeArquivoSaida = new String();
		nomeArquivoSaida += PATH_ARQUIVO_SAIDA + "CSR714.D" + dataMovimento.substring(2) + ".R" + COD_REMESSA_CSR;
		FileOutputStream arquivoSaida = new FileOutputStream(new File(nomeArquivoSaida));

		arquivoSaida.write(gerarHeader().getBytes("Cp1047"));
		sequencialRegistro++;

		FileFilter txtFilter = new FileFilter() {
			public boolean accept(File file) {
				if (file.getName().endsWith(".txt")) {

					return true;
				}
				return false;
			}
		};

		FileFilter tiffFilter = new FileFilter() {

			public boolean accept(File file) {
				if (file.getName().endsWith(".tif")) {

					return true;

				}
				return false;
			}
		};

		File f = new File(path);
		File[] imagens = f.listFiles(tiffFilter);
		File[] txt = f.listFiles(txtFilter);
		String texto = "";

		String txtFile = txt[0].getAbsolutePath();

		for (File imagem : imagens) {
			// Busca nome do arquivo e busca se imagem é F ou V
			String nomeArquivo = imagem.getName();
			String lado = nomeArquivo.substring(nomeArquivo.indexOf('.') - 1, nomeArquivo.indexOf('.'));

			// Busca o registro do 714 no arquivo txt criado anteriormente
			String registro = getRegistroTXT(nomeArquivo, txtFile);

			String inicioRegistro = registro.substring(0, 17);
			System.out.println(inicioRegistro);

			// Busca tamanho da imagem e calcula quantidade de registros
			int imageSize = (int) imagem.length();
			int qtRegistros = (int) ((imageSize / TAMANHO_REG_IMAGEM) + 1);

			// Gera cada registro da imagem
			for (int i = 1; i < qtRegistros + 1; i++) {
				// Cria parte textual do registro com base no original do 714
				String registroCompleto = inicioRegistro + completaZeros(sequencialRegistro, 10) + getEspacos(40)
						+ completaZeros(qtRegistros, 2) + completaZeros(i, 2) + completaZeros((int) imageSize, 9)
						+ completaZeros(0, 9) + lado + getEspacos(17);
				sequencialRegistro++;

				// Faz tratamento na imagem para quebrar em vários registros quando necessário
				ByteBuffer b1 = ByteBuffer.allocate(imageSize);
				b1.put(BBFileUtils.getInstance().getConteudoArquivo(imagem));

				int offSet = ((i - 1) * TAMANHO_REG_IMAGEM);
				int t = 0;
				if (i < qtRegistros) {
					t = TAMANHO_REG_IMAGEM;
				} else {
					t = imageSize - offSet;
				}

				ByteBuffer bb = ByteBuffer.allocate(TAMANHO_REG_IMAGEM);
				bb.put(b1.array(), offSet, t);

				arquivoSaida.write(registroCompleto.getBytes("Cp1047"));
				arquivoSaida.write(bb.array());

				
			}

			if (lado.equals("F")) {
				// Cria texto para planilha a ser comparada com resultados e escreve no arquivo
				// de saída

				texto = imagem.getName().substring(0, nomeArquivo.indexOf('.') - 2).replace('_', ';') + "\n";

				BBFileUtils.getInstance().escreveArquivoAoFinal(arqSaida, texto.getBytes());
			}

		}

		String fichaLote = "018001" + gerarNoves(27) + gerarZeros(17) + gerarBrancos(5) + "001" + gerarBrancos(23)
				+ dataMovimento + "0000001" + "999" + "001981" + gerarBrancos(35) + "018" + "0001" + "030"
				+ completaZeros(sequencialRegistro, 10) + gerarBrancos(27488);

		String trailer = gerarNoves(47) + "CSR714" + CAM_COMPE + VERSAO + gerarBrancos(4) + GeradorCSR714.tipoRemessa
				+ GeradorCSR714.dataMovimento + gerarBrancos(25) + COD_REMESSA_CSR + gerarBrancos(45)
				+ completaZeros(sequencialRegistro, 10) + gerarBrancos(27488);

		arquivoSaida.write(fichaLote.getBytes("Cp1047"));
		arquivoSaida.write(trailer.getBytes("Cp1047"));
		arquivoSaida.flush();
		arquivoSaida.close();
		setNomeArquivo(nomeArquivoSaida);
		System.out.println("Arquivo " + nomeArquivoSaida + " gerado com sucesso.");
	}
	

	// retorna N espaços
	protected static String getEspacos(int n) {
		String retorno = "";
		for (int i = 0; i < n; i++) {
			retorno += " ";
		}
		return retorno;
	}

	protected static String completaZeros(int n, int tamanho) {
		String retorno = String.valueOf(n);
		for (int i = String.valueOf(n).length(); i < tamanho; i++) {
			retorno = "0" + retorno;
		}
		return retorno;
	}

	private String getRegistroTXT(String nomeArquivo, String txt) throws IOException {
		String registro = null;

		String line = "";

		String[] dados = nomeArquivo.split("_");

		String protocoloImagem = dados[0];

		br = new BufferedReader(new InputStreamReader(new FileInputStream(txt)));
		while ((line = br.readLine()) != null) {
			String protocolo = "0" + line.substring(0, 17);

			if (protocolo.equals(protocoloImagem)) {
				return line;
			}

		}

		// Done with the file
		br.close();
		br = null;

		return registro;
	}

	/**
	 * Verifica se ainda existem registros a serem lidos
	 * 
	 * @return
	 */
	private boolean temProximoRegistro() {
		if (registroAtualEntrada <= qtdRegistrosEntrada) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * Lê proximo registro do arquivo base
	 * 
	 * @return
	 * @throws IOException
	 */
	private Registro lerProximoRegistro() throws IOException {
		Registro registro;
		if (registroAtualEntrada > qtdRegistrosEntrada) {
			registro = null;
		} else {
			byte[] dados = new byte[TAMANHO_REG_DADOS];
			byte[] imagem = new byte[TAMANHO_REG_IMAGEM];
			finEntrada.read(dados); // le 240 bytes de dados do registro
			finEntrada.read(imagem);// le 27408 bytes da imagem no registro

			System.out.println("Lido registro " + new Integer(registroAtualEntrada).toString());
			registroAtualEntrada++; // le 27408 bytes de imgagem do registro
			registro = new Registro(new String(dados, "Cp1047"), imagem);
		}

		return registro;
	}

	/**
	 * Gera um registro com base no registro de entrada, altera data da troca e
	 * sequencial do registro
	 * 
	 * @param registroEntrada
	 * @return
	 * @throws IOException
	 */
	private byte[] gerarRegistro(Registro registroEntrada) throws IOException {
		byte registro[] = new byte[TAMANHO_REGISTRO];
		// byte dadosRegistro[] = new byte[TAMANHO_REG_DADOS];

		String seqTemp = gerarSequencialRegistro();
		String dadosRegistroStr = registroEntrada.getDadosRegistro().substring(0, 81) + GeradorCSR714.dataMovimento
				+ registroEntrada.getDadosRegistro().substring(89, 150) + seqTemp
				+ registroEntrada.getDadosRegistro().substring(160, 240);
		
		ByteArrayOutputStream temp = new ByteArrayOutputStream();
		temp.write(dadosRegistroStr.getBytes("Cp1047"));
		temp.write(registroEntrada.getImagemRegistro());
		registro = temp.toByteArray();
		System.out.println("Gerado o registro de nº" + seqTemp);
		return registro;
	}

	/**
	 * Gera linha com n zeros
	 * 
	 * @param qtd
	 * @return
	 */
	private String gerarZeros(int qtd) {
		String zeros = "";
		for (int i = 0; i < qtd; i++) {
			zeros += "0";
		}
		return zeros;
	}

	/**
	 * Gera linha com n noves
	 * 
	 * @param qtd
	 * @return
	 */
	private String gerarNoves(int qtd) {
		String zeros = "";
		for (int i = 0; i < qtd; i++) {
			zeros += "9";
		}
		return zeros;
	}

	/**
	 * Gera linha com n brancos
	 * 
	 * @param qtd
	 * @return
	 */
	private String gerarBrancos(int qtd) {
		String espacos = "";
		for (int i = 0; i < qtd; i++) {
			espacos += " ";
		}
		return espacos;
	}

	/**
	 * Gera o sequencial do trailer com 10 digitos
	 * 
	 * @return
	 */
	private String gerarSequencialTrailer() {
		String sequencialTrailer = new Integer(qtdRegistrosEntrada + 3).toString();
		int qtdZeros = 10 - sequencialTrailer.length();
		for (int i = 0; i < qtdZeros; i++) {
			sequencialTrailer = "0" + sequencialTrailer;
		}
		if (!sequencialTrailer.matches("\\d{10}")) {
			throw new RuntimeException("Erro na geração do sequencial do trailer");
		}
		return sequencialTrailer;
	}

	private String gerarSequencialFichaLote() {
		String sequencialFichaLote = new Integer(qtdRegistrosEntrada + 2).toString();
		int qtdZeros = 10 - sequencialFichaLote.length();
		for (int i = 0; i < qtdZeros; i++) {
			sequencialFichaLote = "0" + sequencialFichaLote;
		}
		if (!sequencialFichaLote.matches("\\d{10}")) {
			throw new RuntimeException("Erro na geração do sequencial da ficha de lote");
		}
		return sequencialFichaLote;
	}

	/**
	 * Gera o sequencial para registro com 10 dígitos
	 * 
	 * @return
	 */
	private String gerarSequencialRegistro() {
		String sequencial = null;
		sequencial = new Integer(registroAtualEntrada).toString();
		int qtdZeros = 10 - sequencial.length();

		for (int i = 0; i < qtdZeros; i++) {
			sequencial = "0" + sequencial;
		}
		return sequencial;
	}

}