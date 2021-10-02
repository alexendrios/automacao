package br.com.stefananini.cursoMobileAutomacaoStep;

import static org.junit.Assert.assertEquals;

import br.com.stefananini.cursoMobileAutomacaoPage.AplicacaoPage;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class AplicacaoStep {

	AplicacaoPage mobile = new AplicacaoPage();

	@Dado("^que esteja na aplicação$")
	public void queEstejaNaAplicação() throws Throwable {

		mobile.abrir();
	}

	@Quando("^eu clico no botão sobre$")
	public void euClicoNoBotãoSobre() throws Throwable {

		mobile.clicarBotao();
	}

	@Então("^vejo a seguinte mensagem \"([^\"]*)\"$")
	public void vejoASeguinteMensagem(String mensagem) throws Throwable {

		assertEquals(mobile.validarTeste(), mensagem);
	}
}
