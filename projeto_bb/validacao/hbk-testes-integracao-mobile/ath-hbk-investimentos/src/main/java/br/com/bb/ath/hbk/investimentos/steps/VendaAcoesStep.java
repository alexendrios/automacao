package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;
import java.util.ArrayList;
import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.AcoesPage;
import br.com.bb.ath.hbk.mobile.HbkMobile;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class VendaAcoesStep extends FTABBUtils {

	@Dado("^que eu esteja logado com os seguintes dados agencia \"([^\"]*)\" conta  \"([^\"]*)\" senha \"([^\"]*)\"$")
	public void queEuEstejaLogadoComOsSeguintesDadosAgenciaContaSenha(String agencia, String conta, String senha)
			throws Exception {

		HbkMobile.abrirAplicativo();
		HbkMobile.fazerLogin(agencia, conta, senha);
	}

	@Quando("^informo o tipo de venda \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Limite \"([^\"]*)\",$")
	public void informoOTipoDeVendaOAtivoAQuantidadePreçoLimite(String tipoVenda, String ativo, String quantidade,
			String precoLimite) throws Exception {

		ArrayList<String> dados = new ArrayList<String>();
		dados.add(tipoVenda);
		dados.add(ativo);
		dados.add(quantidade);
		dados.add(precoLimite);

		new AcoesPage().operacaoVendaAcoes(dados);
	}

	@Quando("^informo o tipo de venda \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Disparo \"([^\"]*)\", preco Limite \"([^\"]*)\",$")
	public void informoOTipoDeVendaOAtivoAQuantidadePreçoDisparoPrecoLimite(String tipoVenda, String ativo,
			String quantidade, String precoDisparo, String precoLimite) throws Exception {

		ArrayList<String> dados = new ArrayList<String>();
		dados.add(tipoVenda);
		dados.add(ativo);
		dados.add(quantidade);
		dados.add(precoDisparo);
		dados.add(precoLimite);

		new AcoesPage().operacaoVendaAcoes(dados);
	}

	@Quando("^informo o tipo de venda \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Disparo \"([^\"]*)\", preco Limite \"([^\"]*)\", preço limite ganho \"([^\"]*)\", preco limite perda \"([^\"]*)\",$")
	public void informoOTipoDeVendaOAtivoAQuantidadePreçoDisparoPrecoLimitePreçoLimiteGanhoPrecoLimitePerda(
			String tipoVenda, String ativo, String quantidade, String precoDisparoGanho, String precoDisparoPerda,
			String precoLimiteGanho, String precoLimitePerda) throws Exception {

		ArrayList<String> dados = new ArrayList<String>();
		dados.add(tipoVenda);
		dados.add(ativo);
		dados.add(quantidade);
		dados.add(precoDisparoGanho);
		dados.add(precoDisparoPerda);
		dados.add(precoLimiteGanho);
		dados.add(precoLimitePerda);

		new AcoesPage().operacaoVendaAcoes(dados);
	}

	@Quando("^informo o tipo de venda \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Disparo \"([^\"]*)\", preco Limite \"([^\"]*)\", preço inicio stop móvel \"([^\"]*)\", preco ajuste inicial \"([^\"]*)\",$")
	public void informoOTipoDeVendaOAtivoAQuantidadePreçoDisparoPrecoLimitePreçoInicioStopMóvelPrecoAjusteInicial(
			String tipoVenda, String ativo, String quantidade, String precoDisparo, String precoLimite,
			String PrecoInicioStopMovel, String PrecoAjusteInicial) throws Exception {

		ArrayList<String> dados = new ArrayList<String>();
		dados.add(tipoVenda);
		dados.add(ativo);
		dados.add(quantidade);
		dados.add(precoDisparo);
		dados.add(precoLimite);
		dados.add(PrecoInicioStopMovel);
		dados.add(PrecoAjusteInicial);

		new AcoesPage().operacaoVendaAcoes(dados);
	}

	@Quando("^informo a custódia Conta \"([^\"]*)\", a senha de seis dígitos \"([^\"]*)\"$")
	public void informoACustódiaContaASenhaDeSeisDígitos(String custodia, String senhaSeis) throws Exception {

		ArrayList<String> infoConta = new ArrayList<String>();
		infoConta.add(custodia);
		infoConta.add(senhaSeis);

		new AcoesPage().confirmarOperacaoVendaAcoes(infoConta);
	}

	@Então("^eu vejo a seguinte a messagem de confirmação da venda \"([^\"]*)\"$")
	public void euVejoASeguinteAMessagemDeConfirmaçãoDaVenda(String mensagem) throws Exception {

		assertEquals(new AcoesPage().validarOperacao(), mensagem);
	}
}
