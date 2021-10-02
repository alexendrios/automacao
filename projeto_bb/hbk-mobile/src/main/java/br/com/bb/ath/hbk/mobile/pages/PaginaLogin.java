package br.com.bb.ath.hbk.mobile.pages;

import br.com.bb.ath.ftabb.Pagina;
import br.com.bb.ath.ftabb.anotacoes.MapearElementoAndroid;
import br.com.bb.ath.ftabb.elementos.ElementoBotao;
import br.com.bb.ath.ftabb.elementos.ElementoInput;
import br.com.bb.ath.ftabb.elementos.ElementoTexto;
import br.com.bb.ath.ftabb.exceptions.ElementoNaoLocalizadoException;

public class PaginaLogin extends Pagina {

    @MapearElementoAndroid(contentDesc = "Agência")
    ElementoInput inputAgencia;

    @MapearElementoAndroid(contentDesc = "Conta")
    ElementoInput inputConta;

    @MapearElementoAndroid(contentDesc = "Senha de 8 Dígitos")
    ElementoInput inputSenha;

    @MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/login_new_access_bt_login")
    ElementoBotao botaoEntrar;
    
    @MapearElementoAndroid(texto = "Nova Conta")
    ElementoBotao btnNovaConta;
    
    
    @MapearElementoAndroid(resourceID = "br.com.bb.investimentosbb:id/tv_user_name")
    ElementoTexto txtUsuario;
    
    
    public void fazerLogin(String agencia, String conta, String senha) throws ElementoNaoLocalizadoException {
		if (!botaoEntrar.elementoExiste()) {
			btnNovaConta.clicar();
		}
        inputAgencia.escrever(agencia);
        inputConta.escrever(conta);
        inputSenha.escrever(senha);
        capturarTela();
        botaoEntrar.clicar();
    }
    
    public boolean validarLogin() throws ElementoNaoLocalizadoException{
    	new PaginaMenu().getMenuProdutos().clicar();
    	capturarTela();
    	return txtUsuario.elementoExiste();
    }

}
