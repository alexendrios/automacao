package br.com.bb.mdc.testesAutomatizadosService;

import java.util.ArrayList;
import br.com.bb.mdc.testesAutomatizadosEntidade.RegistroProtocolo;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;

public class DadosProcessamentoCSR717 {

	private static ArrayList<String> dados;
	private static RegistroProtocolo info;
	private static ArrayList<String> registros;
	private static ArrayList<RegistroProtocolo> listaResgistros;

	public static RegistroProtocolo identicacaoRegistro(String path, String file) {
		/*
		 * Método Responsável pela análise do headear e Trailler referente ao Protocolo
		 * O retorno será um Registro de Protocolo -> Header/Trailler
		 */

		try {
			registros = new ArrayList<String>();
			dados = new ArrayList<String>();
			info = new RegistroProtocolo();

			// Carregamento dos Registros
			registros = Utils.AnalisandoArquivo(path, file);
			dados.add(registros.get(0));
			dados.add(registros.get(registros.size() - 1));

			// Carregamentos dos Dados referente ao Header
			info.setHeadear(dados.get(0).substring(0, 10));
			info.setDataMovimentoHeadear(dados.get(0).substring(10, 18));
			info.setNomeArquivoHeadear(dados.get(0).substring(18, 24));
			info.setRemessaHeadear(dados.get(0).substring(24, 30));

			// Carregamentos dos Dados referente ao Trailler
			info.setTrailler(dados.get(1).substring(0, 10));
			info.setDataMovimentoTrailler(dados.get(1).substring(10, 18));
			info.setNomeArquivoTrailler(dados.get(1).substring(18, 24));
			info.setRemessaTrailler(dados.get(1).substring(24, 30));

		} catch (Exception e) {
			e.printStackTrace();
		}

		// retorna um objeto RegistroProtocolo -> Headear/Trailler
		return info;
	}

	public static ArrayList<RegistroProtocolo> dadosRegistro(String path, String file) {
		/*
		 * Método responsável para análise dos Registros do Protocolo Conterá todos os
		 * registros excluindo o Headear e o Trailler O retorno será uma lista de
		 * Registro do Protocolo
		 */

		try {
			registros = new ArrayList<String>();
			dados = new ArrayList<String>();

			listaResgistros = new ArrayList<RegistroProtocolo>();

			// Carregamento dos Registros
			dados = Utils.AnalisandoArquivo(path, file);

			int i = 1;
			for (int j = dados.size() - 1; i < j; i++) {
				info = new RegistroProtocolo();

				// Carregamentos dos Dados referente ao Registro
				info.setCodProtrocolo(dados.get(i).substring(0, 18));
				info.setCodOcorrencia(dados.get(i).substring(18, 21));
				info.setIndicadorImagem(dados.get(i).substring(21, 22));
				info.setRemessaCSR714(dados.get(i).substring(22, 29));
				info.setCodResponsavel(dados.get(i).substring(29, 37));
				info.setIndiceConfiabilidade(dados.get(i).substring(37, 40));
				info.setDataConferencia(dados.get(i).substring(40, 50));
				info.setHoraCoferencia(dados.get(i).substring(50, 58));
				info.setValorChequeTratado(dados.get(i).substring(58, 75));

				listaResgistros.add(info);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// retorna uma Lista de Objeto de Registro
		return listaResgistros;
	}

}
