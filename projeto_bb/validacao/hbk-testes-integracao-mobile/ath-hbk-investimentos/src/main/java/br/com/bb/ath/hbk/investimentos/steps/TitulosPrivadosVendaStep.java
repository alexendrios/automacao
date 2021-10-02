package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.TitulosPrivadosPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class TitulosPrivadosVendaStep extends FTABBUtils {

	@Quando("^informo Título \"([^\"]*)\", Quantidade \"([^\"]*)\", o valor \"([^\"]*)\";$")
	public void informoTítuloQuantidadeOValor(String titulo, String quantidade, String valor) throws Exception {

		ArrayList<String> informacoesVendaTitulo = new ArrayList<>();
		informacoesVendaTitulo.add(titulo);
		informacoesVendaTitulo.add(quantidade);
		informacoesVendaTitulo.add(valor);

		new TitulosPrivadosPage().realizarVenda(informacoesVendaTitulo);
	}

	@Quando("^informo a Senha do cartão \"([^\"]*)\" para realizar a venda na Funcionalidade títulos Privados,$")
	public void informoASenhaDoCartãoParaRealizarAVendaNaFuncionalidadeTítulosPrivados(String senha) throws Exception {

		new TitulosPrivadosPage().confirmarVenda(senha);
	}

	@Então("^eu vejo a seguinte a mesagem de confirmação da venda do Título Privado com \"([^\"]*)\"$")
	public void euVejoASeguinteAMesagemDeConfirmaçãoDaVendaDoTítuloPrivadoCom(String mensagem) throws Exception {
		assertEquals(new TitulosPrivadosPage().validarOperacao(), mensagem);
	}

}
