package br.com.bb.mdc.testesAutomatizadosEntidade;

import br.com.bb.mdc.testesAutomatizadosUtils.Utils;

public class LoteCSR714 extends InformacoesGeraisCSR714{


	private final String COD_INST_PART_DES_LOTE = "001";
	private final String COD_INST_PART_APRE_LOTE = "001";
	private final String SEQUENCIAL_LOTE = "999";
	private final String CENTRO_PROCESSADOR = "001981";
	private final String TIPO_DUCUMENTO = "030";
	
	private String fichaLote;

	
	
	public String gerarFichaLote(String tipoIdentificacao) {
		
		
		fichaLote = getCOD_COMP() + COD_INST_PART_DES_LOTE + Utils.gerarNoves(27)
			+ Utils.gerarZeros(17) + Utils.gerarBrancos(5) + COD_INST_PART_APRE_LOTE
			+ Utils.gerarBrancos(23) + getDataMovimento() + getNUMERO_LOTE()
			+ SEQUENCIAL_LOTE + CENTRO_PROCESSADOR + Utils.gerarBrancos(35) + getCOD_COMP()
			+ getNUMERO_VERSAO_ARQUIVO() + TIPO_DUCUMENTO + Utils.gerarSequencial(tipoIdentificacao)
			+ Utils.gerarBrancos(27488);
		
		if (fichaLote.length() != 27648) {
			throw new RuntimeException("Ficha de lote maior que 27648");
		}

		return fichaLote;
	}
	
}
