package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.TesouroDiretoPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class InvestimentosTesouroDiretoStep extends FTABBUtils {

	@Quando("^informo o a modalidade de Investimento operação: \"([^\"]*)\", Título de Investimento \"([^\"]*)\", quantidade \"([^\"]*)\",$")
	public void informoOAModalidadeDeInvestimentotítuloTítuloDeInvestimentoQuantidade(String modalidadeInvestimento,
			String tituloInvestimento, String quantidade) throws Exception {

		ArrayList<String> infoInvestimentos = new ArrayList<>();
		infoInvestimentos.add(modalidadeInvestimento);
		infoInvestimentos.add(tituloInvestimento);
		infoInvestimentos.add(quantidade);

		new TesouroDiretoPage().realizarInvestimento(infoInvestimentos);
	}

	@Quando("^informo senha de seis dígitos \"([^\"]*)\"$")
	public void informoSenhaDeSeisDígitos(String senha) throws Exception {

		new TesouroDiretoPage().confirmarInvestimento(senha);

	}

	@Quando("^informo o a modalidade de Investimento operação: \"([^\"]*)\", Tipo de Agendamento \"([^\"]*)\", Data compra: \"([^\"]*)\", quantidade vezes \"([^\"]*)\", Periciodade \"([^\"]*)\", Modalidade \"([^\"]*)\", Título de Investimento \"([^\"]*)\", quantidade \"([^\"]*)\",$")
	public void informoOAModalidadeDeInvestimentoOperaçãoTipoDeAgendamentoDataCompraQuantidadeVezesPericiodadeModalidadeTítuloDeInvestimentoQuantidade(
			String modalidadeInvestimento, String tipoAgendamento, String dataCompra, String quantidadevezes, String Periciodade, 
			String modalidade, String tituloInvestimento, String quantidade)
			throws Exception {
		
		ArrayList<String> infoInvestimentos = new ArrayList<>();
		infoInvestimentos.add(modalidadeInvestimento);
		infoInvestimentos.add(tipoAgendamento);
		infoInvestimentos.add(dataCompra);
		infoInvestimentos.add(Periciodade);
		infoInvestimentos.add(modalidade);
		infoInvestimentos.add(tituloInvestimento);
		infoInvestimentos.add(quantidade);
		infoInvestimentos.add(quantidadevezes);
		
		new TesouroDiretoPage().realizarInvestimento(infoInvestimentos);
	}

	@Então("^eu vejo a seguinte a mensagem de confirmação do Investimentos do Tesouro Direto \"([^\"]*)\"$")
	public void eu_vejo_a_seguinte_a_mensagem_de_confirmação_do_Investimentos_do_Tesouro_Direto(String mensagem)
			throws Exception {

		assertEquals(new TesouroDiretoPage().validarOperacao(), mensagem);
	}
}
