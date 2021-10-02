package br.com.bb.ath.hbk.investimentos.pages;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoDatePicker;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;
import br.com.bb.ath.ftabb.utilitarios.Utils;
import br.com.bb.ath.hbk.mobile.pages.PaginaMenu;

public class TesouroDiretoPage extends Pagina {

	@MapearElementoAndroid(texto = "NÃO")
	ElementoBotao btnCancelar;

	@MapearElementoAndroid(texto = "SIM")
	ElementoBotao btnconfirmar;

	@MapearElementoAndroid(texto = "Painel")
	ElementoBotao btnPainel;

	@MapearElementoAndroid(texto = "Investir")
	ElementoBotao btnInvestir;

	@MapearElementoAndroid(texto = "Resgate")
	ElementoBotao btnResgate;

	@MapearElementoAndroid(texto = "Consulta")
	ElementoBotao btnConsulta;

	@MapearElementoAndroid(texto = "Indicadores")
	ElementoBotao btnIndicadores;

	@MapearElementoAndroid(texto = "Normal")
	ElementoBotao btnInvestirNormal;

	@MapearElementoAndroid(texto = "Agendado")
	ElementoBotao btnAgendado;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/widget_spinner_field")
	ElementoBotao btnTituloSelecao;

	@MapearElementoAndroid(texto = "__param__")
	ElementoBotao btnTituloOpcaoSelecao;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TableLayout/android.widget.TableRow[3]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.Spinner")
	ElementoBotao btnPeriodicidadeSelecao;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]")
	ElementoBotao btnPeriodicidadOpcaoSelecao;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TableLayout/android.widget.TableRow[3]/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.Spinner")
	ElementoBotao btnModalidadeSelecao;

	@MapearElementoAndroid(texto = "__param__")
	ElementoBotao btnModalidadeOpcaoSelecao;

	@MapearElementoAndroid(resourceID = "android:id/text1")
	ElementoBotao btnTituloAgendamendo;

	@MapearElementoAndroid(texto = "__param__")
	ElementoBotao btnTituloAgendamendoOpcao;

	@MapearElementoAndroid(texto = "Quantidade")
	ElementoInput inputQuantidade;

	@MapearElementoAndroid(xPath = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TableLayout/android.widget.TableRow[2]/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText")
	ElementoInput inputQuantidadeVezes;

	@MapearElementoAndroid(texto = "Valor Desejado (R$)")
	ElementoInput inputValordesejado;

	@MapearElementoAndroid(texto = "Senha do Cartão")
	ElementoInput inputSenhaCartao;

	@MapearElementoAndroid(texto = "INVESTIR")
	ElementoBotao btnTituloInvestir;

	@MapearElementoAndroid(texto = "Data da compra")
	ElementoDatePicker datPiDataCompra;

	@MapearElementoAndroid(texto = "Data final")
	ElementoDatePicker datPiDataFinal;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_dialog_title")
	ElementoTexto txtMensagem;

	@MapearElementoAndroid(texto = "FECHAR")
	ElementoBotao btnfechar;

	private void menuTesouroDireto(String tipoOperacao, String operacao) throws ElementoNaoLocalizadoException {

		new PaginaMenu().acessarMenuPeloTexto(tipoOperacao);
		btnCancelar.seElementoExisteClica();

		switch (operacao) {
		case "Painel":
			btnPainel.clicar();
			break;
		case "Investir":
			btnInvestir.clicar();
			break;
		case "Resgate":
			btnResgate.clicar();
			break;
		case "Consulta":
			btnConsulta.clicar();
			break;
		case "Indicadores":
			btnIndicadores.clicar();
			break;
		default:
			throw new FTABBRuntimeException("Item de menu não Encontrado!");
		}
	}

	private void modalidadeInvestimento(ArrayList<String> infoInvestimentos) throws ElementoNaoLocalizadoException {
		Utils.sleep(5);

		if (infoInvestimentos.get(0).equals("Normal")) {
			btnInvestirNormal.clicar();
			btnTituloSelecao.clicar();
			btnTituloOpcaoSelecao.setParam(infoInvestimentos.get(1)).clicar();
			inputQuantidade.clicar();
			inputQuantidade.escreverSe(infoInvestimentos.get(2));
		} else if (infoInvestimentos.get(0).equals("Agendado")) {
			btnAgendado.clicar();
			btnTituloSelecao.clicar();
			btnTituloOpcaoSelecao.setParam(infoInvestimentos.get(1)).clicar();
			datPiDataCompra.escreverData(infoInvestimentos.get(2));

			if (infoInvestimentos.get(1).equals("Até a data definida")) {
				datPiDataFinal.escreverData(infoInvestimentos.get(7));
			} else if (infoInvestimentos.get(1).equals("Quantidade definida")) {
				inputQuantidadeVezes.escrever(infoInvestimentos.get(7));
			}

			if (infoInvestimentos.get(3).equals("Mensal")) {
			    btnPeriodicidadeSelecao.clicar();
				btnPeriodicidadOpcaoSelecao.clicar();
			}

			btnModalidadeSelecao.clicar();
			btnModalidadeOpcaoSelecao.setParam(infoInvestimentos.get(4)).clicar();
			btnTituloAgendamendo.clicar();
			btnTituloAgendamendoOpcao.setParam(infoInvestimentos.get(5)).clicar();
			inputQuantidade.escrever(infoInvestimentos.get(6));

		} else {
			throw new FTABBRuntimeException("Tipo de Investimento não Encontrado!");
		}
	}

	public void realizarInvestimento(ArrayList<String> infoInvestimentos) throws ElementoNaoLocalizadoException {

		String tipoOperacao = "Tesouro Direto";
		String operacao = "Investir";

		menuTesouroDireto(tipoOperacao, operacao);
		modalidadeInvestimento(infoInvestimentos);
	}

	public void confirmarInvestimento(String infoSenha) throws ElementoNaoLocalizadoException {

		inputSenhaCartao.escrever(infoSenha);
		btnTituloInvestir.clicar();
		btnconfirmar.seElementoExisteClica();
	}

	public String validarOperacao() throws ElementoNaoLocalizadoException {

		String mensagem = txtMensagem.recuperarTexto();
		btnfechar.clicar();
		mobileActions.fecharApp();
		return mensagem;
	}

}
