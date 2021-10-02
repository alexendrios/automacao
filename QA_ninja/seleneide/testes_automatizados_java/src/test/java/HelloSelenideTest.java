import static org.testng.Assert.assertEquals;
import org.testng.annotations.Test;
import static com.codeborne.selenide.WebDriverRunner.isChrome;
import static com.codeborne.selenide.Selenide.open;
import static com.codeborne.selenide.Selenide.title;



public class HelloSelenideTest {

    @Test
    public void onAir(){
        isChrome();
        open("https://www.goole.com.br/");
        assertEquals(title(), "Google");
    }

}
