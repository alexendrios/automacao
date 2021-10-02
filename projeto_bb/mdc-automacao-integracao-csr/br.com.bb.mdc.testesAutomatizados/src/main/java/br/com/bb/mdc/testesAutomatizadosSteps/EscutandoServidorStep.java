package br.com.bb.mdc.testesAutomatizadosSteps;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.By;
import br.com.bb.mdc.testesAutomatizadosAnalise.AnaliseDadosProcessamentoCSR717;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class EscutandoServidorStep {

	String path = null;
	String file = null;

	@Dado("^que acesso o servidor \"([^\"]*)\"$")
	public void queAcessoOServidor(String caminho) throws Throwable {

		path = caminho;
	}

	@Quando("^busco a resposta do servidor pelo arquivo \"([^\"]*)\"$")
	public void buscoARespostaDoServidorPeloArquivo(String arquivo) throws Throwable {
		file = arquivo;
	}

	@Quando("^analiso o seu conteúdo$")
	public void analisoOSeuConteúdo() throws Throwable {
		AnaliseDadosProcessamentoCSR717.analisarCSR717(path, file);
	}

	@Quando("^acesso relatório gerado no endereço \"([^\"]*)\"$")
	public void acessoRelatórioGeradoNoEndereço(String caminho) throws Throwable {
		Utils.getDriver().get(caminho);
	}
	
	@Então("^vejo a seguinte mensagem \"([^\"]*)\"$")
	public void vejoASeguinteMensagem(String mensagem) throws Throwable {
	    assertEquals(mensagem, Utils.getDriver().findElement(By.tagName("h1")).getText());
	}

}
