package br.com.bb.mdc.testesAutomatizadosSteps;

import br.com.bb.mdc.testesAutomatizadosUtils.Propiedades;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;
import cucumber.api.Scenario;
import cucumber.api.java.After;

public class Hooks {
	
	@After
	public void tearscreenShotDown(Scenario scenario) throws Exception {
		Utils.gerarScreenShot(scenario);
		if(Propiedades.FECHAR_BROWSER) {
			Utils.killDriver();
		}
	}
	
	

}
