package br.com.stefananini.cursoMobileAutomacaoRunner;



import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {"pretty"}, 
		features = "classpath:features/Aplicacao.feature", 
		monochrome = true, 
		glue = {"br.com.stefananini.cursoMobileAutomacaoStep" }, 
		tags = { "@001_clicando_botao_sobre" }, 
		snippets = SnippetType.CAMELCASE
		)
public class AplicacaoRunner {

}
