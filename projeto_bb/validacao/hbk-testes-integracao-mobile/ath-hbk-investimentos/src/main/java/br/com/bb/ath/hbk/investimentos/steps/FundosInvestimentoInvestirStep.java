package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.FundosInvestimentosPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class FundosInvestimentoInvestirStep extends FTABBUtils {

	@Quando("^informo o a modalidade de Investimento operação: \"([^\"]*)\", Fundo de Investimento \"([^\"]*)\", valor \"([^\"]*)\",$")
	public void informoOAModalidadeDeInvestimentoOperaçãoFundoDeInvestimentoValor(String investimentoOperacao,
			String fundoInvestimento, String valor) throws Exception {

		ArrayList<String> infoInvestimentos = new ArrayList<>();
		infoInvestimentos.add(investimentoOperacao);
		infoInvestimentos.add(fundoInvestimento);
		infoInvestimentos.add(valor);

		new FundosInvestimentosPage().realizarInvestimento(infoInvestimentos);
	}

	@Quando("^informo o a modalidade de Investimento operação: \"([^\"]*)\", Fundo de Investimento \"([^\"]*)\", valor \"([^\"]*)\", data \"([^\"]*)\"$")
	public void informoOAModalidadeDeInvestimentoOperaçãoFundoDeInvestimentoValorData(String investimentoOperacao,
			String fundoInvestimento, String valor, String dataAgendamento) throws Exception {

		ArrayList<String> infoInvestimentos = new ArrayList<>();
		infoInvestimentos.add(investimentoOperacao);
		infoInvestimentos.add(fundoInvestimento);
		infoInvestimentos.add(valor);
		infoInvestimentos.add(dataAgendamento);

		new FundosInvestimentosPage().realizarInvestimento(infoInvestimentos);
	}

	@Quando("^informo o a modalidade de Investimento operação: \"([^\"]*)\", Fundo de Investimento \"([^\"]*)\", valor \"([^\"]*)\", data \"([^\"]*)\", Prazo \"([^\"]*)\",$")
	public void informoOAModalidadeDeInvestimentoOperaçãoFundoDeInvestimentoValorDataPrazo(String investimentoOperacao, String fundoInvestimento,
			String valor, String dataAgendamento, String prazo) throws Exception {

		ArrayList<String> infoInvestimentos = new ArrayList<>();
		infoInvestimentos.add(investimentoOperacao);
		infoInvestimentos.add(fundoInvestimento);
		infoInvestimentos.add(valor);
		infoInvestimentos.add(dataAgendamento);
		infoInvestimentos.add(prazo);

		new FundosInvestimentosPage().realizarInvestimento(infoInvestimentos);
	}

	@Quando("^informo senha de seis dígitos \"([^\"]*)\" para realizar o Investimento no Fundos de Investimento,$")
	public void informoSenhaDeSeisDígitosParaRealizarOInvestimentoNoFundoAcoes(String senha) throws Exception {

		new FundosInvestimentosPage().confirmarrOperacao(senha);
	}

	@Então("^eu vejo a seguinte a mensagem de confirmação do Investimentos do Fundos de Investimento \"([^\"]*)\"$")
	public void euVejoASeguinteAMensagemDeConfirmaçãoDoInvestimentosDoFundosDeInvestimento(String mensagem)
			throws Exception {

		assertEquals(new FundosInvestimentosPage().validarOperacao(), mensagem);

	}
}
