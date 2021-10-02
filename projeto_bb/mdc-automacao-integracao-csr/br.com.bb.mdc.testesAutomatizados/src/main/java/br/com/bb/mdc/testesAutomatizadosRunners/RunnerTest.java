package br.com.bb.mdc.testesAutomatizadosRunners;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;



@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {"pretty", "html:target/Cucumber-report"}, 
		features = "classpath:features/", 
		monochrome = false, 
		glue = {"br.com.bb.mdc.testesAutomatizadosSteps" }, 
		tags = {  "@005_escutando_servidor" },
		dryRun = false,
		snippets = SnippetType.CAMELCASE
)
public class RunnerTest {

}
