package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.AcoesPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class CompraAcoesStep extends FTABBUtils {

	@Quando("^informo o tipo de compra \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Limite \"([^\"]*)\",$")
	public void informoOTipoDeCompraOAtivoAQuantidadePreçoLimite(String tipoCompra, String ativo, String quantidade,
			String precoLimite) throws Exception {

		ArrayList<String> informacoesCompra = new ArrayList<>();
		informacoesCompra.add(tipoCompra);
		informacoesCompra.add(ativo);
		informacoesCompra.add(quantidade);
		informacoesCompra.add(precoLimite);

		new AcoesPage().operacaoCompraAcoes(informacoesCompra);
	}

	@Quando("^informo o tipo de compra \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Disparo \"([^\"]*)\", preço Limite \"([^\"]*)\",$")
	public void informoOTipoDeCompraOAtivoAQuantidadePreçoDisparoPreçoLimite(String tipoCompra, String ativo,
			String quantidade, String precoDisparo, String precoLimite) throws Exception {

		ArrayList<String> informacoesCompra = new ArrayList<>();
		informacoesCompra.add(tipoCompra);
		informacoesCompra.add(ativo);
		informacoesCompra.add(quantidade);
		informacoesCompra.add(precoDisparo);
		informacoesCompra.add(precoLimite);

		new AcoesPage().operacaoCompraAcoes(informacoesCompra);
	}

	@Quando("^informo o tipo de compra de ações \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Limite \"([^\"]*)\", limite de ganho \"([^\"]*)\", disparo perda \"([^\"]*)\", limite perda \"([^\"]*)\"$")
	public void informoOTipoDeCompraDeAçõesOAtivoAQuantidadePreçoLimitePreçoDisparoLimiteDeGanhoDisparoPerdaLimitePerda(
			String tipoCompra, String ativo, String quantidade, String precoLimite,
			String limiteGanho, String disparoPerda, String limitePerda) throws Exception {

		ArrayList<String> informacoesCompra = new ArrayList<>();
		informacoesCompra.add(tipoCompra);
		informacoesCompra.add(ativo);
		informacoesCompra.add(quantidade);
		informacoesCompra.add(precoLimite);
		informacoesCompra.add(limiteGanho);
		informacoesCompra.add(disparoPerda);
		informacoesCompra.add(limitePerda);
		informacoesCompra.add(null);

		new AcoesPage().operacaoCompraAcoes(informacoesCompra);

	}

	@Quando("^informo o tipo de compra de ações \"([^\"]*)\", o ativo \"([^\"]*)\", a quantidade \"([^\"]*)\", preço Limite \"([^\"]*)\", limite de ganho \"([^\"]*)\", disparo perda \"([^\"]*)\", limite perda \"([^\"]*)\", ajuste \"([^\"]*)\", valor do ajuste \"([^\"]*)\",$")
	public void informoOTipoDeCompraDeAçõesOAtivoAQuantidadePreçoLimitePreçoDisparoLimiteDeGanhoDisparoPerdaLimitePerdaAjusteValorDoAjuste(
			String tipoCompra, String ativo, String quantidade, String precoLimite, String limiteGanho, String disparoPerda, String limitePerda,
			String ajuste, String valorAjuste) throws Exception {
		
		ArrayList<String> informacoesCompra = new ArrayList<>();
		informacoesCompra.add(tipoCompra);
		informacoesCompra.add(ativo);
		informacoesCompra.add(quantidade);
		informacoesCompra.add(precoLimite);
		informacoesCompra.add(limiteGanho);
		informacoesCompra.add(disparoPerda);
		informacoesCompra.add(limitePerda);
		informacoesCompra.add(ajuste);
		informacoesCompra.add(valorAjuste);

		new AcoesPage().operacaoCompraAcoes(informacoesCompra);
	}

	@Quando("^para finalizar a a transação referente a compra de ações informo a senha de seis dígitos \"([^\"]*)\"$")
	public void paraFinalizarAATransaçãoReferenteACompraDeAçõesInformoASenhaDeSeisDígitos(String senha)
			throws Exception {

		new AcoesPage().confirmarOperacaoCompraAcoes(senha);
	}

	@Então("^eu vejo a seguinte a mensagem de confirmação da Compra de Ações\"([^\"]*)\"$")
	public void euVejoASeguinteAMensagemDeConfirmaçãoDaCompraDeAções(String mensagem) throws Exception {

		assertEquals(new AcoesPage().validarOperacao(), mensagem);
	}

}
