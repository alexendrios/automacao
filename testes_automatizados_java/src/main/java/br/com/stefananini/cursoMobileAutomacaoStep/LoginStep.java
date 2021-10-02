package br.com.stefananini.cursoMobileAutomacaoStep;

import static org.junit.Assert.assertEquals;

import br.com.stefananini.cursoMobileAutomacaoPage.LoginPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class LoginStep {

	public String retorno;
	
	@Quando("^eu informo \"([^\"]*)\" e (\\d+)$")
	public void eu_informo_e(String usuario, int senha) throws Throwable {
	    
		retorno = new LoginPage().logar(usuario, senha);
	}

	@Então("^visualizo a seguinte \"([^\"]*)\"$")
	public void visualizo_a_seguinte(String mensagem) throws Throwable {
	    
		assertEquals(retorno, mensagem);
	}
}
