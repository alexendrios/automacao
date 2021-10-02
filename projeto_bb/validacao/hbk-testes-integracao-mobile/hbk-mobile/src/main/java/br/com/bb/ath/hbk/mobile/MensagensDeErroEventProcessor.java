package br.com.bb.ath.hbk.mobile;

import java.util.Observable;
import java.util.Observer;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import br.com.bb.ath.ftabb.elementos.ElementEvents;
import br.com.bb.ath.ftabb.elementos.Elemento;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.ftabb.runner.Painel;
import br.com.bb.ath.hbk.mobile.pages.PaginaMensagensDeErro;

public class MensagensDeErroEventProcessor implements Observer {

    private static final Logger logger = LogManager.getLogger();

    private Elemento elm;

    @Override
    public void update(Observable o, Object arg) {
        ElementEvents elmEvents = (ElementEvents) o;
        this.elm = elmEvents.getElemento();

        if (elm != null && elmEvents.getEventType() == ElementEvents.EventType.ELEMENTO_NAO_LOCALIZADO) {
            logarMensagemDeErro();
        }
    }

    private void logarMensagemDeErro() {
        PaginaMensagensDeErro pg = new PaginaMensagensDeErro();
        String msgErro = "";

        logger.info("Tentando recuperar alguma mensagem de erro negocial na tela...");
        
		try {
			if(pg.getAltertErro().elementoExiste()) {
				msgErro = pg.getMsgErro().recuperarTexto();
			}
		} catch (ElementoNaoLocalizadoException e) {
			// não faz nada, apenas tenta com o próximo elemento
		}

        if (msgErro.isEmpty()) {
           logger.info("Nenhuma mensagem de erro encontrada na tela");
        } else {
            Painel.getInstance().registrarMensagemErroNegocial(msgErro);
            logger.info("Mensagem de erro negocial encontrada: " + msgErro);
        }

    }
}
