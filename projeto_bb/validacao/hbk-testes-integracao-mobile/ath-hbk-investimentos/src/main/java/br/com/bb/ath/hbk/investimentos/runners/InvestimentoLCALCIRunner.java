package br.com.bb.ath.hbk.investimentos.runners;

import org.junit.runner.RunWith;

import br.com.bb.ath.ftabb.runner.FTABBCucumberRunner;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;

@RunWith(FTABBCucumberRunner.class)
@CucumberOptions(plugin = {"pretty"},
                 features = "classpath:features/InvestimentoLCALCI.feature", 
                 monochrome=true,
                 glue={"br.com.bb.ath.hbk.investimentos.steps"},
				 tags= {"@001_investir_lci_lca"},
				 snippets = SnippetType.CAMELCASE
			)
public class InvestimentoLCALCIRunner {

}
