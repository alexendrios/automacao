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
import br.com.bb.ath.hbk.mobile.pages.PaginaMenu;

public class TitulosPrivadosPage extends Pagina {

	@MapearElementoAndroid(texto = "Painel")
	ElementoBotao btnPainel;

	@MapearElementoAndroid(texto = "Venda")
	ElementoBotao btnVenda;

	@MapearElementoAndroid(texto = "Consulta")
	ElementoBotao btnConsulta;

	@MapearElementoAndroid(texto = "Indicadores")
	ElementoBotao btnIndicadores;

	@MapearElementoAndroid(texto = "__param__")
	ElementoBotao btnOpcaoParam;

	@MapearElementoAndroid(texto = "Selecione")
	ElementoBotao btnSelecionar;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/mcv_venda_quantidade_edittext")
	ElementoInput inputQuantidade;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/mcv_venda_valor_edittext")
	ElementoInput inputPrecoVenda;

	@MapearElementoAndroid(texto = "Senha do Cartão")
	ElementoInput inputSenhaCartao;

	@MapearElementoAndroid(texto = "VENDER")
	ElementoBotao btnVender;

	@MapearElementoAndroid(texto = "NÃO")
	ElementoBotao btnCancelar;

	@MapearElementoAndroid(texto = "CONFIRMAR")
	ElementoBotao btnconfirmar;

	@MapearElementoAndroid(texto = "FECHAR")
	ElementoBotao btnfechar;

	@MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_dialog_title")
	ElementoTexto txtMensagem;

	private void menuFundosInvestimento(String tipoOperacao, String operacao) throws ElementoNaoLocalizadoException {

		new PaginaMenu().acessarMenuPeloTexto(tipoOperacao);
		btnCancelar.seElementoExisteClica();

		switch (operacao) {
		case "Painel":
			btnPainel.clicar();
			break;
		case "Venda":
			btnVenda.clicar();
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

	public void realizarVenda(ArrayList<String> dados) throws ElementoNaoLocalizadoException {

		String tipoOperacao = "Títulos Privados";
		String operacao = "Venda";
		menuFundosInvestimento(tipoOperacao, operacao);

		btnSelecionar.clicar();
		btnOpcaoParam.setParam(dados.get(0)).clicar();
		inputQuantidade.escrever(dados.get(1));
		inputPrecoVenda.escrever(dados.get(2));
		mobileActions.capturarTela();

		try {
			mobileActions.rolarAte(Direcao.ABAIXO, btnVender, VelocidadeRolagem.RAPIDA);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void confirmarVenda(String senha) throws ElementoNaoLocalizadoException {

		inputSenhaCartao.escrever(senha);
		mobileActions.capturarTela();
		btnVender.clicar();
		mobileActions.capturarTela();
		btnconfirmar.clicar();
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
