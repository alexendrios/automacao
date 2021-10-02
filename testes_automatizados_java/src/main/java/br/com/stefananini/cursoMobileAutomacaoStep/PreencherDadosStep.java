package br.com.stefananini.cursoMobileAutomacaoStep;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import br.com.stefananini.cursoMobileAutomacaoPage.PreencherDadosPage;
import cucumber.api.PendingException;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class PreencherDadosStep {

	PreencherDadosPage mobile = new PreencherDadosPage();

	@Quando("^eu Escolho a opção \"([^\"]*)\",$")
	public void euEscolhoAOpção(String opcao) throws Throwable {

		mobile.menu(opcao);
	}

	@Quando("^informo o nome \"([^\"]*)\" e Senha \"([^\"]*)\",$")
	public void informoONomeESenha(String nome, String senha) throws Throwable {

		ArrayList<String> informacoes = new ArrayList<String>();
		informacoes.add(nome);
		informacoes.add(senha);
		mobile.preecherFormulario(informacoes);
	}

	@Então("^clico no botão entrar retornando a mensagem \"([^\"]*)\"$")
	public void clicoNoBotãoEntrarRetornandoAMensagem(String mensagem) throws Throwable {
		
		assertEquals(mobile.validarFormulario(), mensagem);
	}
}
