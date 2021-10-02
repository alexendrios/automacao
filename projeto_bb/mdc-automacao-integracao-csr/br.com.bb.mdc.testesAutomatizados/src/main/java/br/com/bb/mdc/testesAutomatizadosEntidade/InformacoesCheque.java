package br.com.bb.mdc.testesAutomatizadosEntidade;

public class InformacoesCheque extends InformacoesGeraisCSR714 {

	private String codigoAgenciaCheque;
	private String digitoVerificadorDV2;
	private String numeroContaCheque;
	private String digitoVerificadorDV1;
	private String numeroCheque;
	private String digitoVerificadorDV3;
	private String ufAcolhimento;
	private String agenciaAcolhimento;
	private String valorDocumento;
	private String numeroTipicacaoCheque;
	private String codBancoAcolhedor;
	private String numeroAgenciaApresentante;
	private String numeroAgenciaDeposito;
	private String numeroContaDeposito;
	private String numeroCodigoCompAcolhimento;
	private String dataMovimentoTroca;
	private String numeroAtribuidoLote;
	private String numeroSequencialLote;
	private String InfoControleRepresentante;
	private String numeroIdentificadorCheque;
	private String NumeroTD;

	public String getNumeroTD() {
		return NumeroTD;
	}

	public void setNumeroTD(String numeroTD) {
		NumeroTD = numeroTD;
	}

	public String getNumeroIdentificadorCheque() {
		return numeroIdentificadorCheque;
	}

	public void setNumeroIdentificadorCheque(String numeroIdentificadorCheque) {
		this.numeroIdentificadorCheque = numeroIdentificadorCheque;
	}

	public String getCodigoAgenciaCheque() {
		return codigoAgenciaCheque;
	}

	public void setCodigoAgenciaCheque(String codigoAgenciaCheque) {
		int tamanhoCampo = codigoAgenciaCheque.length();

		if (tamanhoCampo < 4) {
			int repeticoes = 4 - tamanhoCampo;
			for (int i = 0; i < repeticoes; i++) {
				codigoAgenciaCheque = "0" + codigoAgenciaCheque;
			}
		}

		
		this.codigoAgenciaCheque = codigoAgenciaCheque;
	}

	public String getNumeroContaCheque() {
		return numeroContaCheque;
	}

	public void setNumeroContaCheque(String numeroContaCheque) {
		int tamanhoCampo = numeroContaCheque.length();

		if (tamanhoCampo < 12) {
			int repeticoes = 12 - tamanhoCampo;
			for (int i = 0; i < repeticoes; i++) {
				numeroContaCheque = "0"+ numeroContaCheque;
			}
		}

		this.numeroContaCheque = numeroContaCheque;
	}

	public String getNumeroCheque() {
		return numeroCheque;
	}

	public void setNumeroCheque(String numeroCheque) {
		this.numeroCheque = numeroCheque;
	}

	public String getValorDocumento() {
		return valorDocumento;
	}

	public void setValorDocumento(String valorDocumento) {
		int tamanhoCampo = valorDocumento.length();

		if (tamanhoCampo < 17) {
			int repeticoes = 17 - tamanhoCampo;
			for (int i = 0; i < repeticoes; i++) {
				valorDocumento = "0" + valorDocumento;
			}
		}

		this.valorDocumento = valorDocumento;
	}

	public String getDataMovimentoTroca() {
		return dataMovimentoTroca;
	}

	public void setDataMovimentoTroca(String dataMovimentoTroca) {
		String dia = dataMovimentoTroca.substring(0, 2);
		String mes = dataMovimentoTroca.substring(3, 5);
		String ano = dataMovimentoTroca.substring(6, dataMovimentoTroca.length());
		String data = ano + mes + dia;
		this.dataMovimentoTroca = data;
	}

	public String getDigitoVerificadorDV2() {
		return digitoVerificadorDV2;
	}

	public void setDigitoVerificadorDV2(String digitoVerificadorDV2) {
		this.digitoVerificadorDV2 = digitoVerificadorDV2;
	}

	public String getDigitoVerificadorDV1() {
		return digitoVerificadorDV1;
	}

	public void setDigitoVerificadorDV1(String digitoVerificadorDV1) {
		this.digitoVerificadorDV1 = digitoVerificadorDV1;
	}

	public String getDigitoVerificadorDV3() {
		return digitoVerificadorDV3;
	}

	public void setDigitoVerificadorDV3(String digitoVerificadorDV3) {
		this.digitoVerificadorDV3 = digitoVerificadorDV3;
	}

	public String getUfAcolhimento() {
		return ufAcolhimento;
	}

	public void setUfAcolhimento(String ufAcolhimento) {
		this.ufAcolhimento = ufAcolhimento;
	}

	public String getAgenciaAcolhimento() {
		return agenciaAcolhimento;
	}

	public void setAgenciaAcolhimento(String agenciaAcolhimento) {
		this.agenciaAcolhimento = agenciaAcolhimento;
	}

	public String getNumeroTipicacaoCheque() {
		return numeroTipicacaoCheque;
	}

	public void setNumeroTipicacaoCheque(String numeroTipicacaoCheque) {
		this.numeroTipicacaoCheque = numeroTipicacaoCheque;
	}

	public String getCodBancoAcolhedor() {
		return codBancoAcolhedor;
	}

	public void setCodBancoAcolhedor(String codBancoAcolhedor) {
		this.codBancoAcolhedor = codBancoAcolhedor;
	}

	public String getNumeroAgenciaApresentante() {
		return numeroAgenciaApresentante;
	}

	public void setNumeroAgenciaApresentante(String numeroAgenciaApresentante) {
		this.numeroAgenciaApresentante = numeroAgenciaApresentante;
	}

	public String getNumeroAgenciaDeposito() {
		return numeroAgenciaDeposito;
	}

	public void setNumeroAgenciaDeposito(String numeroAgenciaDeposito) {
		this.numeroAgenciaDeposito = numeroAgenciaDeposito;
	}

	public String getNumeroContaDeposito() {
		return numeroContaDeposito;
	}

	public void setNumeroContaDeposito(String numeroContaDeposito) {
		this.numeroContaDeposito = numeroContaDeposito;
	}

	public String getNumeroCodigoCompAcolhimento() {
		return numeroCodigoCompAcolhimento;
	}

	public void setNumeroCodigoCompAcolhimento(String numeroCodigoCompAcolhimento) {
		this.numeroCodigoCompAcolhimento = numeroCodigoCompAcolhimento;
	}

	public String getNumeroAtribuidoLote() {
		return numeroAtribuidoLote;
	}

	public void setNumeroAtribuidoLote(String numeroAtribuidoLote) {
		this.numeroAtribuidoLote = numeroAtribuidoLote;
	}

	public String getNumeroSequencialLote() {
		return numeroSequencialLote;
	}

	public void setNumeroSequencialLote(String numeroSequencialLote) {
		this.numeroSequencialLote = numeroSequencialLote;
	}

	public String getInfoControleRepresentante() {
		return InfoControleRepresentante;
	}

	public void setInfoControleRepresentante(String infoControleRepresentante) {
		InfoControleRepresentante = infoControleRepresentante;
	}

}
