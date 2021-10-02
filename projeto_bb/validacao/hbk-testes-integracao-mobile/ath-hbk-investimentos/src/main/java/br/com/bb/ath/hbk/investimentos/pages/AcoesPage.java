package br.com.bb.ath.hbk.investimentos.pages;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoDatePicker;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoSelect;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.enums.Direcao;
import br.com.bb.ath.ftabb.enums.VelocidadeRolagem;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;
import br.com.bb.ath.ftabb.utilitarios.Utils;
import br.com.bb.ath.hbk.mobile.pages.PaginaMenu;

public class AcoesPage extends Pagina {

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_buy")
	ElementoBotao btnComprarAcao;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnPainel;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnCompra;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnVenda;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[4]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnConsulta;

	@MapearElementoAndroid(texto = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView")
	ElementoBotao btnUtilitarios;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_dialog_low_priority")
	ElementoBotao btnCancelar;

	@MapearElementoAndroid(texto = "Normal")
	ElementoBotao btnAcoesNormal;

	@MapearElementoAndroid(texto = "Stop")
	ElementoBotao btnAcoesStop;

	@MapearElementoAndroid(texto = "Stop Programado")
	ElementoBotao btnAcoesStopProgramado;

	@MapearElementoAndroid(texto = "Start")
	ElementoBotao btnAcoesStart;

	@MapearElementoAndroid(texto = "Simultâneo")
	ElementoBotao btnAcoesSimultaneo;

	@MapearElementoAndroid(texto = "Móvel")
	ElementoBotao btnAcoesMovel;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/et_quantity")
	ElementoInput inputQuantidade;
	
	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/et_active")
	ElementoInput inputAtivo;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_Active")
	ElementoInput inputAtivoStart;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_price_limit")
	ElementoInput inputPrecoLimite;
	
	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_limit_price")
	ElementoInput inputPrecoLimiteMovel;

	@MapearElementoAndroid(contentDesc = "Preço limite")
	ElementoInput inputPrecoLimiteStop;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_limit_loss")
	ElementoInput inputLimitePerda;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_shooting_price")
	ElementoInput inputPrecoDisparo;

	@MapearElementoAndroid(contentDesc = "Preço Disparo Ganho")
	ElementoInput inputPrecoDisparoGanho;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_shooting_price_lost")
	ElementoInput inputPrecoDisparoPerda;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_shooting_loss")
	ElementoInput inputPrecoDisparoPerdaCompraStop;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_price_limit_won")
	ElementoInput inputPrecoLimiteGanho;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_limit_gain")
	ElementoInput inputPrecoLimiteGanhoCompraStop;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_price_limit_lost")
	ElementoInput inputPrecoLimitePerda;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_start_stop_mobile")
	ElementoInput inputPrecoInicioStopMovel;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_start_adjust_price")
	ElementoInput inputPrecoAjusteInicial;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/sp_custody_elements")
	ElementoSelect selecCustodia;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_card_password")
	ElementoInput inputSenhaSeis;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_sell")
	ElementoBotao btnVenderAcao;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_dialog_title")
	ElementoTexto txtMensagem;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_dialog_high_priority")
	ElementoBotao btnConfirmar;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/sw_wallet")
	ElementoBotao btnAjuste;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_adjust")
	ElementoInput inputValorAjuste;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/ed_date_limit")
	ElementoDatePicker dataDataLimite;

	@MapearElementoAndroid(xPath = "//android.widget.EditText[@content-desc=\"Ativo\"]")
	ElementoInput inputAtivoStop;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_dialog")
	ElementoBotao btnfechar;

	private void menuAcoes(String tipoOperacao, String operacao) throws ElementoNaoLocalizadoException {
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
		case "Utilitários":
			btnUtilitarios.clicar();
			break;
		default:
			throw new FTABBRuntimeException("Item de menu não Encontrado!");
		}
	}

	private void selecionarTipoVenda(ArrayList<String> dados) throws ElementoNaoLocalizadoException {

		if (dados.get(0).equals("Normal")) {
			btnAcoesNormal.clicar();
			inputAtivo.escrever(dados.get(1));
			inputQuantidade.escrever(dados.get(2));
			inputPrecoLimite.escrever(dados.get(3));

		} else if (dados.get(0).equals("Stop")) {
			btnAcoesStop.clicar();
			inputAtivo.escrever(dados.get(1));
			inputQuantidade.escrever(dados.get(2));
			inputPrecoDisparo.escrever(dados.get(3));
			inputPrecoLimite.escrever(dados.get(4));

		} else if (dados.get(0).equals("Móvel")) {
			btnAcoesMovel.clicar();
			inputAtivo.escrever(dados.get(1));
			inputQuantidade.escrever(dados.get(2));
			inputPrecoDisparo.escrever(dados.get(3));
			inputPrecoLimiteMovel.escrever(dados.get(4));
			inputPrecoInicioStopMovel.escrever(dados.get(5));
			inputPrecoAjusteInicial.escrever(dados.get(6));

		} else if (dados.get(0).equals("Simultâneo")) {
			btnAcoesSimultaneo.clicar();
			inputAtivo.escrever(dados.get(1));
			inputQuantidade.escrever(dados.get(2));
			inputPrecoDisparoGanho.escrever(dados.get(3));
			inputPrecoDisparoPerda.escrever(dados.get(4));
			inputPrecoLimiteGanho.escrever(dados.get(5));
			inputPrecoLimitePerda.escrever(dados.get(6));
		} else {
			throw new FTABBRuntimeException("Item de menu nao informado!");
		}
	}

	private void selecionarTipoCompra(ArrayList<String> dados) throws ElementoNaoLocalizadoException {

		if (dados.get(0).equals("Normal")) {
			btnAcoesNormal.clicar();
			inputAtivo.escrever(dados.get(1));
			inputQuantidade.escrever(dados.get(2));
			inputPrecoLimite.escrever(dados.get(3));
		} else if (dados.get(0).equals("Start")) {
			btnAcoesStart.clicar();
			inputAtivoStart.escrever(dados.get(1));
			inputQuantidade.escrever(dados.get(2));
			inputPrecoDisparo.escrever(dados.get(3));
			inputPrecoLimite.escrever(dados.get(4));
		} else if (dados.get(0).equals("Stop Programado")) {
			btnAcoesStopProgramado.clicar();
			inputAtivoStop.escrever(dados.get(1));
			inputPrecoLimiteStop.escrever(dados.get(3));
			inputQuantidade.escrever(dados.get(2));
			inputPrecoLimiteGanhoCompraStop.escrever(dados.get(4));
			inputPrecoDisparoPerdaCompraStop.escrever(dados.get(5));
			inputLimitePerda.escrever(dados.get(6));
			if (dados.get(7) != null && dados.get(7).equals("SIM")) {
				btnAjuste.clicar();
				inputValorAjuste.escrever(dados.get(8));
			}

			try {
				mobileActions.rolarAte(Direcao.ABAIXO, btnComprarAcao, VelocidadeRolagem.RAPIDA);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			throw new FTABBRuntimeException("Item de menu nao informado!");
		}
	}

	public void operacaoVendaAcoes(ArrayList<String> informacoesVenda) throws ElementoNaoLocalizadoException {
		String operacao = "Ações";
		String funcionalidade = "Venda";

		menuAcoes(operacao, funcionalidade);
		selecionarTipoVenda(informacoesVenda);
	}

	public void operacaoCompraAcoes(ArrayList<String> informacoesCompra) throws ElementoNaoLocalizadoException {
		String operacao = "Ações";
		String funcionalidade = "Compra";

		menuAcoes(operacao, funcionalidade);
		selecionarTipoCompra(informacoesCompra);
	}

	public void confirmarOperacaoVendaAcoes(ArrayList<String> dados) throws ElementoNaoLocalizadoException {
		selecCustodia.selecionarPorTexto(dados.get(0));
		inputSenhaSeis.escrever(dados.get(1));
		mobileActions.capturarTela();
		btnVenderAcao.clicar();
		mobileActions.capturarTela();
		btnConfirmar.clicar();
		Utils.sleep(3);
		mobileActions.capturarTela();
	}

	public void confirmarOperacaoCompraAcoes(String senha) throws ElementoNaoLocalizadoException {
		inputSenhaSeis.escrever(senha);
		mobileActions.capturarTela();
		btnComprarAcao.clicar();
		capturarTela();
		btnConfirmar.clicar();
		Utils.sleep(3);
		mobileActions.capturarTela();
	}

	public String validarOperacao() throws ElementoNaoLocalizadoException {
		String mensagem = txtMensagem.recuperarTexto();
		btnfechar.clicar();
		btnfechar.seElementoExisteClica();
		mobileActions.fecharApp();
		return mensagem;
	}

}
