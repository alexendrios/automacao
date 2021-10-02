package br.com.bb.mdc.testesAutomatizadosSteps;

import static org.junit.Assert.assertEquals;

import br.com.bb.mdc.testesAutomatizadosUtils.Utils;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class ValidandoArquivoServidorStep {

	String path = null;
	String file = null;
	String respostaServidor = null;

	@Dado("^eu acesso o servidor \"([^\"]*)\"$")
	public void euAcessoOServidor(String caminho) throws Throwable {
		path = caminho;
	}

	@Quando("^busco o arquivo \"([^\"]*)\"$")
	public void buscoOArquivo(String arquivo) throws Throwable {

		file = arquivo;
		respostaServidor = Utils.verificarArquivo(path, file) ;
		
	}

	@Então("^eu tenho um resposta de retorno \"([^\"]*)\"$")
	public void euTenhoUmRespostaDeRetorno(String mensagem) throws Throwable {
	    assertEquals(respostaServidor, mensagem);
	}
}
