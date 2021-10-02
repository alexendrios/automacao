package br.com.bb.mdc.testesAutomatizadosEntidade;

public class RegistroProtocolo extends IdentificacaoProtocolo{

	private String codProtrocolo;
	private String codOcorrencia;
	private String indicadorImagem;
	private String remessaCSR714;
	private String codResponsavel;
	private String indiceConfiabilidade;
	private String dataConferencia;
	private String horaCoferencia;
	private String valorChequeTratado;

	public String getCodProtrocolo() {
		return codProtrocolo;
	}

	public void setCodProtrocolo(String codProtrocolo) {
		this.codProtrocolo = codProtrocolo;
	}

	public String getCodOcorrencia() {
		return codOcorrencia;
	}

	public void setCodOcorrencia(String codOcorrencia) {
		this.codOcorrencia = codOcorrencia;
	}

	public String getIndicadorImagem() {
		return indicadorImagem;
	}

	public void setIndicadorImagem(String indicadorImagem) {
		this.indicadorImagem = indicadorImagem;
	}

	public String getRemessaCSR714() {
		return remessaCSR714;
	}

	public void setRemessaCSR714(String remessaCSR714) {
		this.remessaCSR714 = remessaCSR714;
	}

	public String getCodResponsavel() {
		return codResponsavel;
	}

	public void setCodResponsavel(String codResponsavel) {
		this.codResponsavel = codResponsavel;
	}

	public String getIndiceConfiabilidade() {
		return indiceConfiabilidade;
	}

	public void setIndiceConfiabilidade(String indiceConfiabilidade) {
		this.indiceConfiabilidade = indiceConfiabilidade;
	}

	public String getDataConferencia() {
		return dataConferencia;
	}

	public void setDataConferencia(String dataConferencia) {
		this.dataConferencia = dataConferencia;
	}

	public String getHoraCoferencia() {
		return horaCoferencia;
	}

	public void setHoraCoferencia(String horaCoferencia) {
		this.horaCoferencia = horaCoferencia;
	}

	public String getValorChequeTratado() {
		return valorChequeTratado;
	}

	public void setValorChequeTratado(String valorChequeTratado) {
		this.valorChequeTratado = valorChequeTratado;
	}
}
