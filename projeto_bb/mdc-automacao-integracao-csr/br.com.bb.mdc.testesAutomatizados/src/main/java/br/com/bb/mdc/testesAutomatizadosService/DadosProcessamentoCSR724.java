package br.com.bb.mdc.testesAutomatizadosService;

import java.util.ArrayList;
import br.com.bb.mdc.testesAutomatizadosEntidade.IndentificacaoRS724;
import br.com.bb.mdc.testesAutomatizadosEntidade.RegistroCSR724;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;

public class DadosProcessamentoCSR724 {

	private static IndentificacaoRS724 identificacao;
	private static RegistroCSR724 registros;

	public static ArrayList<String> carregamentoInformacoes(String path, String file) throws Exception {

		ArrayList<String> dados = new ArrayList<String>();
		ArrayList<String> infoArquivo = new ArrayList<String>();

		try {

			// Carregamento dos Registros
			infoArquivo = Utils.AnalisandoArquivo(path, file);
			for (String info : infoArquivo) {

				dados.add(info);
			}
		} catch (Exception e) {
			throw new Exception("** Erro ao Carregar o Arquivo. ***");
		}

		return dados;
	}

	public static IndentificacaoRS724 identicacaoRegistro(ArrayList<String> dados) throws Exception {

		identificacao = new IndentificacaoRS724();

		// Carregmento dos dados referente ao Headear
		identificacao.setIdentificacaoHeadear(dados.get(0).substring(0, 4));
		identificacao.setNomeArquivoHeadear(dados.get(0).substring(4, 10));
		identificacao.setDataMovimentoHeadear(dados.get(0).substring(10, 18));
		identificacao.setBancoHeadear(dados.get(0).substring(18, 22));

		// Carregmento dos dados referente ao Trailler
		identificacao.setIdentificacaoTrailler(dados.get(2).substring(0, 4));
		identificacao.setNomeArquivoTrailler(dados.get(2).substring(4, 10));
		identificacao.setDataMovimentoTrailler(dados.get(2).substring(10, 18));
		identificacao.setBancoTrailler(dados.get(2).substring(18, 22));

		return identificacao;
	}

	public static RegistroCSR724 arquivoRegistro(ArrayList<String> dados) {

		//registros
		registros = new RegistroCSR724();
		
		// Carregmento dos dados referente ao Corpo do Arquivo
		registros.setTipoRegistro(dados.get(1).substring(0,1));
		registros.setNomeArquivo(dados.get(1).substring(1,7));
		registros.setCodigoErro(dados.get(1).substring(7,9));
		registros.setPosicaoOcorrencia(dados.get(1).substring(9,18));
		registros.setHeadearArquivo(dados.get(1).substring(18,200));

		return registros;
	}
}
