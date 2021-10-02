package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;
import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.OuroPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class CompraOuroStep extends FTABBUtils {

	@Quando("^informa a quantidade de \"([^\"]*)\" gramas$")
	public void informaAQuantidadeDeGramas(String quantidade) throws Exception {

		new OuroPage().realizarCompraOuro(quantidade);
	}

	@Quando("^informo a  senha de seis dígitos \"([^\"]*)\"$")
	public void informoASenhaDeSeisDígitos(String senha) throws Exception {

		new OuroPage().confirmarOperacaoCompra(senha);
	}

	@Então("^eu vejo a seguinte a messagem de confirmação da Compra com \"([^\"]*)\"$")
	public void euVejoASeguinteAMessagemDeConfirmaçãoDaCompraCom(String mensagem) throws Exception {

		assertEquals(new OuroPage().validarOperacao(), mensagem);

	}

}
