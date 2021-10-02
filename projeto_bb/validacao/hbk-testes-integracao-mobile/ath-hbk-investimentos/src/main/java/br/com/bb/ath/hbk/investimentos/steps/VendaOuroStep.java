package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.OuroPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class VendaOuroStep extends FTABBUtils {

	@Quando("^informa a quantidade de \"([^\"]*)\" gramas para negociar a venda$")
	public void informaAQuantidadeDeGramasParaNegociarAVenda(String quantidade) throws Exception {

		new OuroPage().realizarVendaOuro(quantidade);
	}

	@Quando("^informo a  senha de seis dígitos \"([^\"]*)\" para realizar a transação de Venda Ouro$")
	public void informoASenhaDeSeisDígitosParaRealizarATransaçãoDeVendaOuro(String senha) throws Exception {

		new OuroPage().confirmarOperacaoVenda(senha);
	}

	@Então("^eu vejo a seguinte a messagem de confirmação da Venda Ouro com \"([^\"]*)\"$")
	public void euVejoASeguinteAMessagemDeConfirmaçãoDaVendaOuroCom(String mensagem) throws Exception {

		assertEquals(new OuroPage().validarOperacao(), mensagem);
	}
}
