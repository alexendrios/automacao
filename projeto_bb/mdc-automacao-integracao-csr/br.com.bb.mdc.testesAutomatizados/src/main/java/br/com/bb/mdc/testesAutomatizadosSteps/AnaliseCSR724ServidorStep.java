package br.com.bb.mdc.testesAutomatizadosSteps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import org.openqa.selenium.By;
import br.com.bb.mdc.testesAutomatizadosAnalise.AnaliseDadosProcessamentoCRS724;
import br.com.bb.mdc.testesAutomatizadosEntidade.IndentificacaoRS724;
import br.com.bb.mdc.testesAutomatizadosEntidade.RegistroCSR724;
import br.com.bb.mdc.testesAutomatizadosService.DadosProcessamentoCSR724;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;
import cucumber.api.java.es.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class AnaliseCSR724ServidorStep {

	private String path= null;
	private IndentificacaoRS724 identificacao;
	private RegistroCSR724 registro;

	@Dado("^eu acesso o servidor informando o endereço \"([^\"]*)\"$")
	public void euAcessoOServidorInformandoOEndereço(String caminho) throws Throwable {
	   
		path = caminho;
	}
	
	
	@Quando("^busco o analiso o arquivo \"([^\"]*)\"$")
	public void buscoOAnalisoOArquivo(String arquivo) throws Throwable {
	    identificacao = new IndentificacaoRS724();
	    registro = new RegistroCSR724();
	    
		ArrayList<String> informacoes = new ArrayList<String>();
	   
		informacoes = DadosProcessamentoCSR724.carregamentoInformacoes(path, arquivo);
		identificacao = DadosProcessamentoCSR724.identicacaoRegistro(informacoes);
		registro = DadosProcessamentoCSR724.arquivoRegistro(informacoes);
		AnaliseDadosProcessamentoCRS724.reportHtml(identificacao, registro);
	}
	
	@Então("^eu visualizo a seguinte menssagem \"([^\"]*)\"$")
	public void euVisualizoASeguinteMenssagem(String mensagem) throws Throwable {
	    assertEquals(Utils.getDriver().findElement(By.cssSelector("body > div > table.table.table-hover > tbody > tr:nth-child(4) > td:nth-child(2)")).getText(), mensagem);
	}
}
