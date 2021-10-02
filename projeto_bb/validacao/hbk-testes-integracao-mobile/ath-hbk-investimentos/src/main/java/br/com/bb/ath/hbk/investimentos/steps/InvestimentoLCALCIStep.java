package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.TitulosRendaFixaPage;
import cucumber.api.PendingException;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class InvestimentoLCALCIStep extends FTABBUtils {

	@Quando("^informo  o tipo de operação desejada \"([^\"]*)\" a modalidade \"([^\"]*)\", valor do investimento \"([^\"]*)\",$")
	public void informo_o_tipo_de_operação_desejada_a_modalidade_valor_do_investimento(String operacao,
			String modalidade, String valorInvestimento) throws Exception {

		ArrayList<String> dadosInvestimento = new ArrayList<>();
		dadosInvestimento.add(operacao);
		dadosInvestimento.add(modalidade);
		dadosInvestimento.add(valorInvestimento);

		new TitulosRendaFixaPage().investir(dadosInvestimento);
	}

	@Quando("^para finalizar o investimento informo a senha de seis dígitos \"([^\"]*)\"$")
	public void para_finalizar_o_investimento_informo_a_senha_de_seis_dígitos(String senha) throws Exception {

		new TitulosRendaFixaPage().confirmarInvestimento(senha);
	}

	@Então("^eu vejo a seguinte a menssagem de confirmação de investimento \"([^\"]*)\"$")
	public void eu_vejo_a_seguinte_a_menssagem_de_confirmação_de_investimento(String mensagem) throws Exception {

		assertEquals(new TitulosRendaFixaPage().validarOperacao(), mensagem);
	}
}
