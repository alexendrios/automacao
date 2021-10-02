package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.TitulosRendaFixaPage;
import br.com.bb.ath.hbk.mobile.HbkMobile;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Quando;
import cucumber.api.java.pt.Então;

public class ResgateLCALCIStep extends FTABBUtils {

	@Dado("^que eu esteja logado com os seguintes dados agencia \"([^\"]*)\" conta \"([^\"]*)\" senha \"([^\"]*)\"$")
	public void queEuEstejaLogadoComOsSeguintesDadosAgenciaContaSenha(String agencia, String conta, String senha)
			throws Exception {

		HbkMobile.abrirAplicativo();
		HbkMobile.fazerLogin(agencia, conta, senha);
	}

	@Quando("^informo  o tipo de operação desejada \"([^\"]*)\" a modalidade \"([^\"]*)\", tipo \"([^\"]*)\", valor de resgate \"([^\"]*)\"$")
	public void informoOTipoDeOperaçãoDesejadaAModalidadeTipoValorDeResgate(String operacao, String modalidade,
			String tipoResgate, String valorResgate) throws Exception {

		ArrayList<String> dadosResgate = new ArrayList<>();
		dadosResgate.add(operacao);
		dadosResgate.add(modalidade);
		dadosResgate.add(tipoResgate);
		dadosResgate.add(valorResgate);

		new TitulosRendaFixaPage().resgatar(dadosResgate);
	}

	@Quando("^informo  o tipo de operação desejada \"([^\"]*)\" a modalidade \"([^\"]*)\", tipo de resgate \"([^\"]*)\"$")
	public void informoOTipoDeOperaçãoDesejadaAModalidadeTipoDeResgate(String operacao, String modalidade,
			String tipoResgate) throws Exception {

		ArrayList<String> dadosResgate = new ArrayList<>();
		dadosResgate.add(operacao);
		dadosResgate.add(modalidade);
		dadosResgate.add(tipoResgate);

		new TitulosRendaFixaPage().resgatar(dadosResgate);
	}

	@Quando("^para finalizar o resgate informo a senha de seis dígitos \"([^\"]*)\"$")
	public void paraFinalizarOResgateInformoASenhaDeSeisDígitos(String senhaSeis) throws Exception {

		new TitulosRendaFixaPage().confirmarResgate(senhaSeis);
	}

	@Então("^eu vejo a seguinte a menssagem de confirmação de resgate \"([^\"]*)\"$")
	public void euVejoASeguinteAMenssagemDeConfirmaçãoDeResgate(String mensagem) throws Exception {

		assertEquals(new TitulosRendaFixaPage().validarOperacao(), mensagem);
	}

}
