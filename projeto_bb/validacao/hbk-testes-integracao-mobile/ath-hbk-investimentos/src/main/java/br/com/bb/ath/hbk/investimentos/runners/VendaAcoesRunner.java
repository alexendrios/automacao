package br.com.bb.ath.hbk.investimentos.runners;

import org.junit.runner.RunWith;

import br.com.bb.ath.ftabb.runner.FTABBCucumberRunner;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;

@RunWith(FTABBCucumberRunner.class)
@CucumberOptions(plugin = {"pretty"},
                 features = "classpath:features/VendaAcoes.feature", 
                 monochrome=true,
                 glue={"br.com.bb.ath.hbk.investimentos.steps"},
				 tags= {"@venda_acoes"},
				 snippets = SnippetType.CAMELCASE
			)
public class VendaAcoesRunner {

}
