package br.com.bb.ath.hbk.investimentos.pages;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;
import br.com.bb.ath.hbk.mobile.pages.PaginaMenu;

public class OuroPage extends Pagina {

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnPainel;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnCompra;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnVenda;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[4]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnConsulta;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnresumo;

	@MapearElementoAndroid(texto = "Cotação do dia")
	ElementoBotao btnCotacaoDia;

	@MapearElementoAndroid(texto = "Extrato de movimentações no período")
	ElementoBotao btnExtratoPeriodo;

	@MapearElementoAndroid(contentDesc = "1 mes")
	ElementoBotao btnvisualizacaoUmMes;

	@MapearElementoAndroid(contentDesc = "3 meses")
	ElementoBotao btnvisualizacaoTresMeses;

	@MapearElementoAndroid(contentDesc = "6 meses")
	ElementoBotao btnvisualizacaoSeisMeses;

	@MapearElementoAndroid(contentDesc = "1 ano")
	ElementoBotao btnvisualizacaoUmAno;

	@MapearElementoAndroid(contentDesc = "1 ano")
	ElementoBotao btnvisualizacaoDoisAnos;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/et_quantity_g")
	ElementoInput inputQuantidade;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_card_password")
	ElementoInput inputSenhaSeis;

	@MapearElementoAndroid(texto = "COMPRAR")
	ElementoBotao btnComprar;

	@MapearElementoAndroid(texto = "VENDER")
	ElementoBotao btnVender;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_dialog_title")
	ElementoTexto txtMensagem;

	@MapearElementoAndroid(texto = "CONFIRMAR")
	ElementoBotao btnConfirmar;

	@MapearElementoAndroid(resourceID = "android:id/button2")
	ElementoBotao btnCancelar;

	@MapearElementoAndroid(texto = "FECHAR")
	ElementoBotao btnfechar;
	
	private void menuOuro(String tipoOperacao, String operacao) throws ElementoNaoLocalizadoException {

		new PaginaMenu().acessarMenuPeloTexto(tipoOperacao);

		btnCancelar.seElementoExisteClica();

		switch (operacao) {
		case "Painel":
			btnPainel.clicar();
			break;
		case "Compra":
			btnCompra.clicar();
			break;
		case "Venda":
			btnVenda.clicar();
			break;
		case "Consulta":
			btnConsulta.clicar();
			break;
		case "Resumo":
			btnresumo.clicar();
			break;
		default:
			throw new FTABBRuntimeException("Item de menu não Encontrado!");
		}
	}

	public void realizarCompraOuro(String informacaoCompra) throws ElementoNaoLocalizadoException {

		String tipoOperacao = "Ouro";
		String operacao = "Compra";

		menuOuro(tipoOperacao, operacao);
		inputQuantidade.escrever(informacaoCompra);

	}

	public void realizarVendaOuro(String informacaoVenda) throws ElementoNaoLocalizadoException {

		String tipoOperacao = "Ouro";
		String operacao = "Venda";

		menuOuro(tipoOperacao, operacao);
		inputQuantidade.escrever(informacaoVenda);

	}

	public void confirmarOperacaoCompra(String senha) throws ElementoNaoLocalizadoException {

		inputSenhaSeis.escrever(senha);
		capturarTela();
		btnComprar.clicar();
		btnConfirmar.clicar();
		capturarTela();
	}

	public void confirmarOperacaoVenda(String senha) throws ElementoNaoLocalizadoException {

		inputSenhaSeis.escrever(senha);
		capturarTela();
		btnVender.clicar();
		capturarTela();

	}

	public String validarOperacao() throws ElementoNaoLocalizadoException {

		String mensagem = txtMensagem.recuperarTexto();
		btnfechar.clicar();
		mobileActions.fecharApp();
		return mensagem;
	}

}
