package br.com.bb.ath.hbk.investimentos.steps;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import br.com.bb.ath.ftabb.utilitarios.FTABBUtils;
import br.com.bb.ath.hbk.investimentos.pages.OfertaPublicaPage;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class ReservaOfertaPublicaStep extends FTABBUtils {

	@Quando("^informo o operação \"([^\"]*)\", a oferta \"([^\"]*)\", a modalidade de compra \"([^\"]*)\", a característica \"([^\"]*)\", o valor da proposta \"([^\"]*)\", o aceite do termo \"([^\"]*)\",$")
	public void informoOOperaçãoAOfertaAModalidadeDeCompraACaracterísticaOValorDaPropostaOAceiteDoTermo(String operacao,
			String oferta, String modalidadeCompra, String caracteristica, String valorProposta, String aceite)
			throws Exception {

		ArrayList<String> dadosReserva = new ArrayList<>();
		dadosReserva.add(operacao);
		dadosReserva.add(oferta);
		dadosReserva.add(modalidadeCompra);
		dadosReserva.add(caracteristica);
		dadosReserva.add(caracteristica);
		dadosReserva.add(valorProposta);
		dadosReserva.add(aceite);

		new OfertaPublicaPage().realizarReserva(dadosReserva);
	}

	@Quando("^digito a senha de seis dígito \"([^\"]*)\" para finalizar a proposta da de reserva Oferta Pública,$")
	public void digitoASenhaDeSeisDígitoParaFinalizarAPropostaDaDeReservaOfertaPública(String senha) throws Exception {

		new OfertaPublicaPage().confirmarOperacao(senha);
	}

	@Então("^eu vejo a seguinte a mensagem de confirmação da Reserva da Oferta Pública com \"([^\"]*)\"$")
	public void euVejoASeguinteAMensagemDeConfirmaçãoDaReservaDaOfertaPúblicaCom(String mensagem) throws Exception {

		assertEquals(new OfertaPublicaPage().validarOperacao(), mensagem);
	}
}
