package br.com.bb.ath.hbk.mobile;

import br.com.bb.ath.ftabb.FTABBContext;
import br.com.bb.ath.ftabb.config.Config;
import br.com.bb.ath.ftabb.enums.BrowserEnum;
import br.com.bb.ath.ftabb.enums.TipoAplicacao;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;
import br.com.bb.ath.hbk.mobile.pages.PaginaConfiguracaoAmbiente;
import br.com.bb.ath.hbk.mobile.pages.PaginaLogin;

public class HbkMobile {

	public static void abrirAplicativo() {
		FTABBContext ctx = FTABBContext.getContext();
		HbkMobileModule apfMobileModule = new HbkMobileModule();
		ctx.registrarCanal(apfMobileModule, TipoAplicacao.MOBILE);
		ctx.boot();

		Config config = ctx.getContextConfig();
		BrowserEnum browserInicializado = ctx.getBrowserModule().getBrowserInicializado().getBrowser();

		// recupera o ambiente que será definido no centralizador
		String ambiente = config.get(HbkMobileModule.CONFIG_HBK_AMBIENTE);
		
		PaginaConfiguracaoAmbiente pgConfiguracaoAmbiente = new PaginaConfiguracaoAmbiente();
		
		if (browserInicializado == BrowserEnum.ANDROID) {

			String appBundleId = config.get(HbkMobileModule.CONFIG_APP_BUNDLE_ID_ANDROID);
			// ativa o aplicativo APF novamente
			ctx.getBrowserModule().getMobileActions().ativarApp(appBundleId);
			
			
			if (ctx.getBrowserModule().getMobileActions().alertNaTela()
					|| pgConfiguracaoAmbiente.avisoAtualizacaoPlayServiceAtivo()) {
				ctx.getBrowserModule().getMobileActions().clicarBotaoVoltar();
			}
			
			// define o ambiente
			pgConfiguracaoAmbiente.definirAmbiente(ambiente);
			
			ctx.getBrowserModule().getMobileActions().clicarBotaoVoltar();

		} else if (browserInicializado == BrowserEnum.IOS) {

			//TODO deve fazer implementacao do IOS aqui
		}
	}

	public static void fazerLogin(String agencia, String conta, String senha) throws ElementoNaoLocalizadoException {
		PaginaLogin pgLogin = new PaginaLogin();
		pgLogin.fazerLogin(agencia, conta, senha);
	}
	
	public static void fazerLogoff() {
		// Todo: implementar
	}

}
