package br.com.bb.ath.hbk.investimentos.pages;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoMobile;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoDatePicker;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.enums.Direcao;
import br.com.bb.ath.ftabb.enums.VelocidadeRolagem;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;
import br.com.bb.ath.ftabb.utilitarios.Utils;
import br.com.bb.ath.hbk.mobile.pages.PaginaMenu;

public class FundosInvestimentosPage extends Pagina {

	@MapearElementoAndroid(texto = "NÃO")
	ElementoBotao btnCancelar;

	@MapearElementoAndroid(texto = "Painel")
	ElementoBotao btnPainel;

	@MapearElementoAndroid(texto = "Investimento")
	ElementoBotao btnInvestimento;

	@MapearElementoAndroid(texto = "Resgate")
	ElementoBotao btnResgate;

	@MapearElementoAndroid(texto = "Consulta")
	ElementoBotao btnConsulta;

	@MapearElementoAndroid(texto = "Indicadores")
	ElementoBotao btnIndicadores;

	@MapearElementoAndroid(texto = "__param__")
	ElementoBotao btnOpcaoParam;

	@MapearElementoAndroid(texto = "Normal")
	ElementoBotao btnInvestimentoNormal;

	@MapearElementoAndroid(texto = "Agendado")
	ElementoBotao btnInvestimentoAgendado;

	@MapearElementoAndroid(texto = "Programado")
	ElementoBotao btnInvestimentoProgramado;

	@MapearElementoAndroid(texto = "Saldos")
	ElementoBotao btnInvestimentoSaldos;

	@MapearElementoAndroid(texto = "Fundo de Investimento")
	ElementoInput inputFundoInvestimento;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/til_funds_normal_investment_value")
	ElementoBotao btnFundoInvestimentoNormal;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/til_funds_scheduled_investment_value")
	ElementoBotao btnFundoInvestimentoAgendado;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/til_funds_programmed_investment_value")
	ElementoBotao btnFundoInvestimentoProgramado;
	
	@MapearElementoAndroid(contentDesc = "Valor a ser investido")
	ElementoInput inputValor;

	@MapearElementoAndroid(resourceID = "android:id/text1")
	ElementoBotao btnInvestimentoPrazo;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/field")
	ElementoDatePicker dataPikProgramar;

	@MapearElementoAndroid(texto = "Senha do Cartão")
	ElementoInput inputSenhaCartao;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_funds_normal_investment")
	ElementoBotao btnInvestirNormal;
	
	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_funds_scheduled_investment")
	ElementoBotao btnInvestirAgendado;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/btn_funds_programmed_investment")
	ElementoBotao btnInvestirProgramado;
	
	@MapearElementoAndroid(texto = "Investir")
	ElementoBotao btnInvestirRolagem;

	@MapearElementoAndroid(texto = "FECHAR")
	ElementoBotao btnfechar;

	@MapearElementoAndroid(texto = "SIM")
	ElementoBotao btnConfirmar;

	@MapearElementoAndroid(texto = "sim")
	ElementoBotao btnConfirmar2;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_dialog_title")
	ElementoTexto txtMensagem;

	@MapearElementoAndroid(texto = "Aceito o termo de adesão")
	ElementoBotao btnAceiteTermo;

	@MapearElementoAndroid(texto = "CONFIRMAR")
	ElementoBotao btnConfirmarAceiteTermo;

	private void menuFundosInvestimento(String tipoOperacao, String operacao) throws ElementoNaoLocalizadoException {

		new PaginaMenu().acessarMenuPeloTexto(tipoOperacao);
		btnCancelar.seElementoExisteClica();

		switch (operacao) {
		case "Painel":
			btnPainel.clicar();
			break;
		case "Investimento":
			btnInvestimento.clicar();
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
			btnInvestimentoNormal.clicar();
		} else if (infoInvestimentos.get(0).equals("Agendado")) {
			btnInvestimentoAgendado.clicar();
			dataPikProgramar.escreverData(infoInvestimentos.get(3));
		} else if (infoInvestimentos.get(0).equals("Programado")) {
			btnInvestimentoProgramado.clicar();
			dataPikProgramar.escreverData(infoInvestimentos.get(3));
			btnInvestimentoPrazo.clicar();
			btnOpcaoParam.setParam(infoInvestimentos.get(4)).clicar();
		} else {
			throw new FTABBRuntimeException("Modalidade não Encontrada!!");
		}
		inputFundoInvestimento.clicar();
		inputFundoInvestimento.escrever(infoInvestimentos.get(1));
		Utils.sleep(2);
		btnFundoInvestimentoNormal.seElementoExisteClica();
		btnFundoInvestimentoAgendado.seElementoExisteClica();
		btnFundoInvestimentoProgramado.seElementoExisteClica();
		inputValor.escrever(infoInvestimentos.get(2));
		try {
			mobileActions.rolarAte(Direcao.ABAIXO, btnInvestirRolagem, VelocidadeRolagem.RAPIDA);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void realizarInvestimento(ArrayList<String> infoInvestimentos) throws ElementoNaoLocalizadoException {

		String tipoOperacao = "Fundos de Investimento";
		String operacao = "Investimento";

		menuFundosInvestimento(tipoOperacao, operacao);
		modalidadeInvestimento(infoInvestimentos);
	}

	public void confirmarrOperacao(String senha) throws ElementoNaoLocalizadoException {
		inputSenhaCartao.clicar();
		inputSenhaCartao.escrever(senha);
		btnInvestirNormal.seElementoExisteClica();
		btnInvestirAgendado.seElementoExisteClica();
		btnInvestirProgramado.seElementoExisteClica();
		btnConfirmar.seElementoExisteClica();
		btnAceiteTermo.seElementoExisteClica();
		btnConfirmarAceiteTermo.seElementoExisteClica();
		btnConfirmar.seElementoExisteClica();;
		btnConfirmar2.seElementoExisteClica();
	}

	public String validarOperacao() throws ElementoNaoLocalizadoException {
		String mensagem = txtMensagem.recuperarTexto();
		btnfechar.clicar();
		btnfechar.seElementoExisteClica();
		return mensagem;
	}

}
