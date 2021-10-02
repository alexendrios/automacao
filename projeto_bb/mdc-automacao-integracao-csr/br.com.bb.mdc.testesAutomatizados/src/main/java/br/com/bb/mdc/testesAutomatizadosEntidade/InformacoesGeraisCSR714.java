package br.com.bb.mdc.testesAutomatizadosEntidade;

public class InformacoesGeraisCSR714 {

	private final String COD_COMP = "018";
	private final String COD_BANCO_CHEQ = "001";
	private final String NUMERO_LOTE = "0000001";
	private final String NUMERO_VERSAO_ARQUIVO = "0001";
	private String dataMovimento;
	

	public String getNUMERO_VERSAO_ARQUIVO() {
		return NUMERO_VERSAO_ARQUIVO;
	}

	public String getNUMERO_LOTE() {
		return NUMERO_LOTE;
	}

	public String getCOD_COMP() {
		return COD_COMP;
	}

	public String getCOD_BANCO_CHEQ() {
		return COD_BANCO_CHEQ;
	}

	public void setDataMovimento(String dataMovimento) {
		this.dataMovimento = dataMovimento;
	}

	public String getDataMovimento() {
		String dt = this.dataMovimento;
		if (!dt.matches("\\d{8}")) {
			throw new IllegalArgumentException("A data de movimento deve estar no formato AAAAMMDD");
		}
		return dt;
	}

}
