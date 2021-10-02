package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertTrue;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.mobile.HbkMobile;
import br.com.bb.ath.hbk.mobile.pages.PaginaLogin;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;

public class LoginStep extends FTABBUtils {
	
	@Dado("^que acessei a pagina inicial doa aplicativo$")
	public void que_acessei_a_pagina_inicial_doa_aplicativo() throws Exception {
		HbkMobile.abrirAplicativo();
	}

	@Quando("^eu informo a agência \"([^\"]*)\", número da conta \"([^\"]*)\", senha de oito dígitos \"([^\"]*)\"$")
	public void eu_informo_a_agência_número_da_conta_senha_de_oito_dígitos(String agencia, String conta, String senha) throws Exception {
		HbkMobile.fazerLogin(agencia, conta, senha);
	}

	@Entao("^efetuo o login com sucesso$")
	public void efetuo_o_login_com_sucesso() throws Exception {
	    assertTrue(new PaginaLogin().validarLogin());
	    capturarTela();
	}

}
