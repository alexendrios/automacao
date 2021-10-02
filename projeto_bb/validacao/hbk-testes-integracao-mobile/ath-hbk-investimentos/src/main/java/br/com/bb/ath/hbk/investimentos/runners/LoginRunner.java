package br.com.bb.ath.hbk.investimentos.runners;

import org.junit.runner.RunWith;

import br.com.bb.ath.ftabb.runner.FTABBCucumberRunner;
import cucumber.api.CucumberOptions;

@RunWith(FTABBCucumberRunner.class)
@CucumberOptions(plugin = {"pretty"},
                 features = "classpath:features/Login.feature", 
                 monochrome=true,
                 glue={"br.com.bb.ath.hbk.investimentos.steps"}
			)

public class LoginRunner {

}
