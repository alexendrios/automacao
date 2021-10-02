package br.com.bb.ath.hbk.mobile.pages;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.DesativarNotificacaoElementoNaoLocalizado;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;

public class PaginaMensagensDeErro extends Pagina {

    @DesativarNotificacaoElementoNaoLocalizado
    @MapearElementoAndroid(xPath = "//android.widget.TextView[@resource-id='br.com.bb.investimentosbb:id/tv_alert_type' and @text='Erro']")
    ElementoTexto altertErro;
    
    @DesativarNotificacaoElementoNaoLocalizado
    @MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_alert_message")
    ElementoTexto msgErro;
    
	public ElementoTexto getAltertErro() {
		return altertErro;
	}

	public ElementoTexto getMsgErro() {
		return msgErro;
	}

}
