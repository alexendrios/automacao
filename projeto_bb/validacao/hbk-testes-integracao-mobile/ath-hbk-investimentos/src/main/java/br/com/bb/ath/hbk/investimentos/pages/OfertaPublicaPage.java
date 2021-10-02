package br.com.bb.ath.hbk.investimentos.pages;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;
import br.com.bb.ath.hbk.mobile.pages.PaginaMenu;

public class OfertaPublicaPage extends Pagina {

	@MapearElementoAndroid(resourceID = "android:id/button2")
	ElementoBotao btnCancelar;

	@MapearElementoAndroid(texto = "Painel")
	ElementoBotao btnPainel;

	@MapearElementoAndroid(texto = "Reserva")
	ElementoBotao btnReserva;

	@MapearElementoAndroid(texto = "Consulta")
	ElementoBotao btnConsulta;

	@MapearElementoAndroid(texto = "Comunicados")
	ElementoBotao btnComunicados;

	@MapearElementoAndroid(texto = "Selecione")
	ElementoBotao btnSelecione;

	@MapearElementoAndroid(texto = "__param__")
	ElementoBotao btnOpcaoParam;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/field")
	ElementoInput inputValor;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/sw_prospect_reading_authorization")
	ElementoInput inputTermo;
	
	@MapearElementoAndroid(texto = "Senha do Cartão")
	ElementoInput inputSenha;
	
	@MapearElementoAndroid(texto = "Reservar")
	ElementoBotao btnReservar;
	
	@MapearElementoAndroid(texto = "SIM")
	ElementoBotao btnConfirmar;
	
	@MapearElementoAndroid(texto = "CONFIRMAR")
	ElementoBotao btnConfirmarOfertaPublica;
	
	@MapearElementoAndroid(texto = "FECHAR")
	ElementoBotao btnFechar;
	
	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_dialog_title")
	ElementoTexto txtMensagemConfirmacao;

	private void menuOfertaPublica(String tipoOperacao, String operacao) throws ElementoNaoLocalizadoException {

		new PaginaMenu().acessarMenuPeloTexto(tipoOperacao);
		btnCancelar.seElementoExisteClica();

		switch (operacao) {
		case "Painel":
			btnPainel.clicar();
			break;
		case "Reserva":
			btnReserva.clicar();
			break;
		case "Consulta":
			btnConsulta.clicar();
			break;
		case "Comunicados":
			btnComunicados.clicar();
			break;
		default:
			throw new FTABBRuntimeException("Item de menu não Encontrado!");
		}
	}

	public void realizarReserva(ArrayList<String> informacoesOfertaPublica) throws ElementoNaoLocalizadoException {

		String tipoOperacao = "";
		String operacao = informacoesOfertaPublica.get(0);
		menuOfertaPublica(tipoOperacao, operacao);

		btnSelecione.clicar();
		btnOpcaoParam.setParam(informacoesOfertaPublica.get(1)).clicar();
		mobileActions.clicarBotaoVoltar();
		btnSelecione.clicar();
		btnOpcaoParam.setParam(informacoesOfertaPublica.get(2)).clicar();
		btnSelecione.clicar();
		btnOpcaoParam.setParam(informacoesOfertaPublica.get(3)).clicar();
		inputValor.escrever(informacoesOfertaPublica.get(4));

		if (informacoesOfertaPublica.get(5).equals("SIM")) {
			inputTermo.clicar();
		} else {
			System.out.println("É necessário o Aceite");
			mobileActions.fecharApp();
		}
	}
	
	public void confirmarOperacao(String senha) throws ElementoNaoLocalizadoException {
		
		inputSenha.escrever(senha);
		btnReservar.clicar();
		btnConfirmar.clicar();
		btnConfirmarOfertaPublica.clicar();
	}
	
	public String validarOperacao() throws ElementoNaoLocalizadoException {
		
		String mensagem = txtMensagemConfirmacao.recuperarTexto();
		btnFechar.clicar();
		mobileActions.fecharApp();
		
		return mensagem;
	}
}
