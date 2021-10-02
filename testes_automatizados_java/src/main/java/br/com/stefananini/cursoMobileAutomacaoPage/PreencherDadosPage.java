package br.com.stefananini.cursoMobileAutomacaoPage;

import java.util.ArrayList;

import br.com.stefananini.cursoMobileAutomacaoCore.aplicacaoMobile;

public class PreencherDadosPage extends aplicacaoMobile {

	// Mapeamento

	String btnSobre = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.TextView";
	String btnFormulario = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.TextView";
	String btnBarrigaNativo = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.widget.TextView";
	String btnBarrigaHibrido = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[1]/android.widget.TextView";
	String inputNome = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText[1]";
	String inputSenha = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText[2]";
	String btnEntrar = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button/android.widget.TextView";
	String txtMensagem = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[2]";
	
	public void menu(String opcao) {

		if (opcao.equals("Sobre")) {

			getDriver().findElementByXPath(btnSobre).click();
		} else if (opcao.equals("Formulário")) {
			getDriver().findElementByXPath(btnFormulario).click();
		} else if (opcao.equals("Seu Barriga Nativo")) {
			getDriver().findElementByXPath(btnBarrigaNativo).click();
		} else if (opcao.equals("Seu Barriga Hibrido")) {
			getDriver().findElementByXPath(btnBarrigaHibrido).click();
		} else {
			System.out.println("Opção não Encontrada");
		}
	}
	
	public void preecherFormulario(ArrayList<String> dados) {
		
		getDriver().findElementByXPath(inputNome).sendKeys(dados.get(0));
		getDriver().findElementByXPath(inputSenha).sendKeys(dados.get(1));
	}
	
	public String validarFormulario() {
		getDriver().findElementByXPath(btnEntrar).click();
		String status = getDriver().findElementByXPath(txtMensagem).getText();
			
		return status;
	}
	
}
