package br.com.stefananini.cursoMobileAutomacaoPage;

import br.com.stefananini.cursoMobileAutomacaoCore.aplicacaoMobile;

public class AplicacaoPage extends  aplicacaoMobile{
	
	// Mapear elementos
	String btnSobre = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.TextView";
	String txtMensagem = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[1]"; 
	
	public void abrir() {
		getDriver();
	}
	
	public void clicarBotao() {
		getDriver().findElementByXPath(btnSobre).click();
	}
	
	public String validarTeste() {
		String retorno = getDriver().findElementByXPath(txtMensagem).getText();
		killDriver();
		return retorno;
	}
}