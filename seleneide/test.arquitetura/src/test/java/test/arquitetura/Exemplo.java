package test.arquitetura;

import org.junit.Assert;
import org.junit.Test;
import static com.codeborne.selenide.WebDriverRunner.isChrome;
import static com.codeborne.selenide.Selenide.open;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selectors.byLinkText;


public class Exemplo {
	
	@Test
	public void start() {
		
		isChrome();
		open("https://automacaocombatista.herokuapp.com/");
		//System.out.println($("#index-banner").exists());
		$(byText("Come?ar Automa??o Web")).click();
		$(byText("Formul?rio")).click();
		$(byLinkText("Criar Usu?rios")).click();
		//System.out.println($("#user_name").exists());
		//System.out.println($("input[name='user[name]']").exists());
		$(byLinkText("Lista de Usu?rios")).click();
		Assert.assertEquals($$("table td").texts().get(0), "Beatriz");
	}
			

}
