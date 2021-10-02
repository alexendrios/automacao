package br.com.bb.ath.hbk.investimentos.pages;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.enums.Direcao;
import br.com.bb.ath.ftabb.enums.VelocidadeRolagem;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;
import br.com.bb.ath.ftabb.utilitarios.Utils;
import br.com.bb.ath.hbk.mobile.pages.PaginaMenu;

public class TitulosRendaFixaPage extends Pagina {

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnPainel;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnInvestiomento;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnResgate;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[4]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnConsulta;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnCancelamento;

	@MapearElementoAndroid(texto = "Selecione")
	ElementoBotao btnSelecione;

	@MapearElementoAndroid(texto = "BB LCA POS CDI")
	ElementoBotao btnLcaPosCdi;

	@MapearElementoAndroid(texto = "LCI POS-FIXADA COM RESGATE")
	ElementoBotao btnLcaPosFixada;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout")
	ElementoBotao btnModalidadeParcial;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[9]/android.widget.LinearLayout")
	ElementoBotao btnModalidadeTotal;

	@MapearElementoAndroid(texto = "Parcial")
	ElementoBotao btnTipoResgateParcial;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout")
	ElementoBotao btnTipoResgateTotal;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/lcalci_rescue_et_rescue_value")
	ElementoInput inputValor;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/lcalci_investment_et_invest_value")
	ElementoInput inputValorInvestimento;

	@MapearElementoAndroid(texto = "Senha do Cartão")
	ElementoInput inputSenha;

	@MapearElementoAndroid(texto = "RESGATAR")
	ElementoBotao btnResgatte;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/lcalci_investment_bt_invest")
	ElementoBotao btnInvestir;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_dialog_title")
	ElementoTexto txtMensagem;

	@MapearElementoAndroid(texto = "CONFIRMAR")
	ElementoBotao btnConfirmar;

	@MapearElementoAndroid(texto = "FECHAR")
	ElementoBotao btnFechar;

	private void escolherOperacao(String tipoOperacao, String opcaoMenu) throws ElementoNaoLocalizadoException {

		new PaginaMenu().acessarMenuPeloTexto(tipoOperacao);

		switch (opcaoMenu) {
		case "Painel":
			btnPainel.clicar();
			break;
		case "Investiomento":
			btnInvestiomento.clicar();
			break;
		case "Resgate":
			btnResgate.clicar();
			break;
		case "Consulta":
			btnConsulta.clicar();
			break;
		case "Cancelamento":
			btnCancelamento.clicar();
			break;

		default:
			throw new FTABBRuntimeException("Item de menu não Encontrado!");
		}
	}

	private void opcao(ArrayList<String> dadosResgate) throws ElementoNaoLocalizadoException {

		btnSelecione.clicar();
		Utils.sleep(3);
		switch (dadosResgate.get(1)) {
		case "BB LCA POS CDI":
			btnLcaPosCdi.clicar();
			break;
		case "LCI POS-FIXADA COM RESGATE":
			btnLcaPosFixada.clicar();
			break;
		default:
			throw new FTABBRuntimeException("Modalidade não informado!");
		}
	}

	private void selecionarResgate(ArrayList<String> dadosResgate) throws ElementoNaoLocalizadoException {

		btnSelecione.clicar();
		if (dadosResgate.get(2).equals("Parcial")) {
			btnModalidadeParcial.clicar();
			btnSelecione.clicar();
			btnTipoResgateParcial.clicar();
			inputValor.escrever(dadosResgate.get(3));
		} else if (dadosResgate.get(2).equals("Total")) {
			btnModalidadeTotal.clicar();
			btnSelecione.clicar();
			btnTipoResgateTotal.clicar();
		} else {
			throw new FTABBRuntimeException("Tipo de Resgate nao informado!");
		}
	}

	public void resgatar(ArrayList<String> dadosResgate) throws ElementoNaoLocalizadoException {

		String operacao = "Títulos de Renda Fixa";

		escolherOperacao(operacao, dadosResgate.get(0));
		opcao(dadosResgate);
		selecionarResgate(dadosResgate);
	}

	public void investir(ArrayList<String> dadosInvestimento) throws ElementoNaoLocalizadoException {
		String operacao = "Títulos de Renda Fixa";

		escolherOperacao(operacao, dadosInvestimento.get(0));
		opcao(dadosInvestimento);
		inputValorInvestimento.escrever(dadosInvestimento.get(2));
		try {
			mobileActions.rolarAte(Direcao.ABAIXO, btnInvestir, VelocidadeRolagem.RAPIDA);
		} catch (Exception e) {
			e.printStackTrace();
		}
		inputSenha.clicar();
	}

	public void confirmarResgate(String senhaSeis) throws ElementoNaoLocalizadoException {

		inputSenha.escrever(senhaSeis);
		btnResgatte.clicar();
		Utils.sleep(3);
		btnConfirmar.clicar();
		Utils.sleep(3);
		capturarTela();
	}

	public void confirmarInvestimento(String senhaSeis) throws ElementoNaoLocalizadoException {

		inputSenha.escrever(senhaSeis);
		btnInvestir.seElementoExisteClica();
		Utils.sleep(3);
		btnConfirmar.clicar();
		Utils.sleep(3);
		capturarTela();
	}

	public String validarOperacao() throws ElementoNaoLocalizadoException {

		String mensagem = txtMensagem.recuperarTexto();
		btnFechar.clicar();
		mobileActions.fecharApp();
		return mensagem;
	}

}
