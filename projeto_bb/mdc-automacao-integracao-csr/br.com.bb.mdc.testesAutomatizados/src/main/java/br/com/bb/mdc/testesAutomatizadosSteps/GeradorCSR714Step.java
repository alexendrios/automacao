package br.com.bb.mdc.testesAutomatizadosSteps;

import br.com.bb.mdc.testesAutomatizadosService.RegistroCSR714;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Quando;

public class GeradorCSR714Step {

	String diretorio;
	String dataMovimentoArquivo;
	RegistroCSR714 registro;

	@Dado("^que informo o diretorio \"([^\"]*)\"$")
	public void queInformoODiretorio(String path) throws Throwable {
	   
		diretorio = path;
	}

	@Quando("^informo a data de movimento \"([^\"]*)\"$")
	public void informo_a_data_de_movimento(String dataMovimento) throws Throwable {

		dataMovimentoArquivo = dataMovimento;
		registro = new RegistroCSR714();
		
		
		registro.gerarCRS714(dataMovimentoArquivo, diretorio);
	}

	
}
