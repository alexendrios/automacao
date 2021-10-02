package br.com.stefananini.cursoMobileAutomacaoStep;

import static org.junit.Assert.assertEquals;

import br.com.stefananini.cursoMobileAutomacaoPage.ExemploPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class ExemploStep {
	
	public int soma;
	
	@Quando("^tenho um número '(\\d+)' desejo somar '(\\d+)'$")
	public void tenho_um_número_desejo_somar(int num1, int num2) throws Throwable {
	    
		soma = new ExemploPage().realizarSoma(num1, num2);
	}

	@Então("^o resultado '(\\d+)'$")
	public void o_resultado(int resultado) throws Throwable {
	    
		assertEquals(soma, resultado);
	}

}
