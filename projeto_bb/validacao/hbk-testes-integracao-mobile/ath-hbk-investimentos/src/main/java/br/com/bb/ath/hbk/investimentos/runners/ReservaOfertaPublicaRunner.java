package br.com.bb.ath.hbk.investimentos.runners;

import org.junit.runner.RunWith;

import br.com.bb.ath.ftabb.runner.FTABBCucumberRunner;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;

@RunWith(FTABBCucumberRunner.class)
@CucumberOptions(plugin = {"pretty"},
                 features = "classpath:features/ReservaOfertaPublica.feature", 
                 monochrome=true,
                 glue={"br.com.bb.ath.hbk.investimentos.steps"},
				 tags= {"@oferta_publica_reserva"},
				 snippets = SnippetType.CAMELCASE
			)
public class ReservaOfertaPublicaRunner {

}
