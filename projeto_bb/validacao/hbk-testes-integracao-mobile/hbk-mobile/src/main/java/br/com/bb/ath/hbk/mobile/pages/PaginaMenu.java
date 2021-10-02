package br.com.bb.ath.hbk.mobile.pages;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.exceptions.FTABBRuntimeException;

public class PaginaMenu extends Pagina {

	@MapearElementoAndroid(contentDesc = "Menu de Produtos")
	ElementoBotao menuProdutos;

	@MapearElementoAndroid(texto = "Ações")
	ElementoBotao botaoItemDeMenuAcoes;

	@MapearElementoAndroid(texto = "Página Inicial")
	ElementoBotao botaoItemDeMenuPaginaInicial;

	@MapearElementoAndroid(texto = "Calculadora I.R.")
	ElementoBotao botaoItemDeMenuCalculadoraIR;

	@MapearElementoAndroid(texto = "Títulos de Renda Fixa")
	ElementoBotao botaoItemTitulosRendaFixa;

	@MapearElementoAndroid(texto = "Fundos de Investimento")
	ElementoBotao botaoItemDeMenuFundosInvestimentos;

	@MapearElementoAndroid(texto = "Oferta Pública")
	ElementoBotao botaoItemDeMenuOfertaPublica;

	@MapearElementoAndroid(texto = "Ouro")
	ElementoBotao botaoItemDeMenuOuro;

	@MapearElementoAndroid(texto = "Tesouro Direto")
	ElementoBotao botaoItemDeMenuTesouroDireto;
	
	@MapearElementoAndroid(texto = "Títulos Privados")
	ElementoBotao botaoItemDeMenuTítulosPrivados;

	public void acessarMenuPeloTexto(String itemDeMenu) throws ElementoNaoLocalizadoException {

		menuProdutos.clicar();

		switch (itemDeMenu) {
		case "Ações":
			botaoItemDeMenuAcoes.clicar();
			break;
		case "Página Inicial":
			botaoItemDeMenuPaginaInicial.clicar();
			break;
		case "Calculadora I.R.":
			botaoItemDeMenuCalculadoraIR.clicar();
			break;
		case "Fundos de Investimento":
			botaoItemDeMenuFundosInvestimentos.clicar();
			break;
		case "Oferta Pública":
			botaoItemDeMenuOfertaPublica.clicar();
			break;
		case "Ouro":
			botaoItemDeMenuOuro.clicar();
			break;
		case "Tesouro Direto":
			botaoItemDeMenuTesouroDireto.clicar();
			break;
		case "Títulos de Renda Fixa":
			botaoItemTitulosRendaFixa.clicar();
			break;
		case "Títulos Privados":
			botaoItemDeMenuTítulosPrivados.clicar();
			break;
		default:
			throw new FTABBRuntimeException("Item de menu nao informado!");
		}

	}

	public ElementoBotao getMenuProdutos() {
		return menuProdutos;
	}

}
