package br.com.stefananini.cursoMobileAutomacaoPage;

public class LoginPage {

	public String logar(String usuario, int senha) {
		String status = null;
		
		if(usuario.equals("stefanini") && senha == 123) {
			status = "Usuario logado com Sucesso";
		}else {
			status = "Senha/Usuário inválido";
		}
		
		return status;
	}
}

