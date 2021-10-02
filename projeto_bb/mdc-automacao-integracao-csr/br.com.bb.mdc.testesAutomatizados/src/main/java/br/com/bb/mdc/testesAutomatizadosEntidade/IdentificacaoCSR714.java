package br.com.bb.mdc.testesAutomatizadosEntidade;

import br.com.bb.mdc.testesAutomatizadosUtils.Utils;

public class IdentificacaoCSR714 extends InformacoesGeraisCSR714{

	private final String FILE_NAME = "CSR714";
	private final String TIPO_REMESSA = "2";
	private final String CAM_COMPE = "000";
	private final String COD_REMESSA_CSR = "0000010";

	public String montarIdentificacao(String tipoIdentificacao) {
		tipoIdentificacao = tipoIdentificacao.toUpperCase();
		String saida = "";
		if (tipoIdentificacao.equals("HEADER")) {
			saida = Utils.gerarZeros(47);
		} else if (tipoIdentificacao.equals("TRAILLER")) {
			saida = Utils.gerarNoves(47);
		}

		String identificacao = saida + FILE_NAME + CAM_COMPE + getNUMERO_VERSAO_ARQUIVO() + Utils.gerarBrancos(4) + TIPO_REMESSA
				+ getDataMovimento() + Utils.gerarBrancos(25) + COD_REMESSA_CSR + Utils.gerarBrancos(45)
				+ Utils.gerarSequencial(tipoIdentificacao) + Utils.gerarBrancos(27488);
		
		if (identificacao.length() != 27648) {
			throw new RuntimeException( tipoIdentificacao +" é maior que 27648");
		}
		return identificacao;
	}

}
