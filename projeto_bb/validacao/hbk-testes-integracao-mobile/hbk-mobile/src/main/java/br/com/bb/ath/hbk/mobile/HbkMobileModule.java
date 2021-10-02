package br.com.bb.ath.hbk.mobile;

import br.com.bb.ath.ftabb.CanalFTABB;
import br.com.bb.ath.ftabb.FTABBContext;
import br.com.bb.ath.ftabb.browser.BrowserModule;
import br.com.bb.ath.ftabb.config.Config;
import br.com.bb.ath.ftabb.elementos.ElementEvents;

class HbkMobileModule extends CanalFTABB {

	//private static final Logger logger = LogManager.getLogger();

	private static final String APP_BUNDLE_ID_ANDROID = "br.com.bb.investimentosbb";
	//private static final String APP_BUNDLE_ID_IOS = "com.bb.bbapp";

	public static final String CONFIG_APP_BUNDLE_ID_ANDROID = "hbkmobile.app.bundle_id.android";

	public static final String CONFIG_VERSAO_APP = "hbkmobile.app.versao";
	
	public static final String CONFIG_HBK_AMBIENTE = "hbkmobile.ambiente"; 

	public void init(FTABBContext ctx) {
		//incluindo observer para tratamento de erro
		ElementEvents elmEvents = ctx.getElementModule().getEvents();
		elmEvents.addObserver(new MensagensDeErroEventProcessor());
	}

	public void config(Config config) {
		
		config.registrarConfiguracaoAtiva(CONFIG_HBK_AMBIENTE);
		
		// Android
		config.registrarConfiguracaoAtiva(CONFIG_APP_BUNDLE_ID_ANDROID, APP_BUNDLE_ID_ANDROID);
		config.alterarValorPadrao(BrowserModule.CONFIG_ANDROID_APP_ACTIVITY, "br.com.bb.investimentosbb.view.Splash");
		config.alterarValorPadrao(BrowserModule.CONFIG_ANDROID_WAIT_ACTIVITY, "br.com.bb.investimentosbb.layer.view.MainActivity");
		//config.alterarValorPadrao(BrowserModule.CONFIG_MOBILE_AUTOMATION_NAME, "");

		// IOS
		//config.registrarConfiguracaoAtiva(CONFIG_APP_BUNDLE_ID_IOS, APP_BUNDLE_ID_IOS);

	}

	public String getNomeCanal() {
		return "HBK-Mobile";
	}

	@Override
	public String getArtifactIdCanal() {
		// TODO Auto-generated method stub
		return null;
	}

}
