package br.com.bb.mdc.testesAutomatizadosSteps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import br.com.bb.mdc.testesAutomatizadosUtils.Utils;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class Envio_CSR714Step {

	String file;
	String pathOrigin;
	String pathDestin;
	ArrayList<String> infoEnvio = null;
	String status = null;

	@Dado("^que eu acesso o servidor \"([^\"]*)\"$")
	public void queEuAcessoOServidor(String path) throws Throwable {

		pathDestin = path;
		//Utils.abrirDiretorio(pathDestin);

	}

	@Quando("^informo o local do arquivo \"([^\"]*)\"$")
	public void informoOLocalDoArquivo(String path) throws Throwable {
		pathOrigin = path;
	}

	@Quando("^informo o nome do arquivo \"([^\"]*)\"$")
	public void informoONomeDoArquivo(String arquivo) throws Throwable {
		file = arquivo;
	}

	@Então("^envio para o o arquivo para o servidor \"([^\"]*)\"$")
	public void envioParaOOArquivoParaOServidor(String servidor) throws Throwable {
		infoEnvio = new ArrayList<String>();

		infoEnvio.add(pathOrigin);
		infoEnvio.add(file);
		infoEnvio.add(pathDestin);

		status = Utils.moverArquivo(infoEnvio);

		assertEquals(status, servidor);
	}

}
