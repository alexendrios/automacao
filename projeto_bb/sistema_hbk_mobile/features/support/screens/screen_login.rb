class Login < Appium::Driver

  def initialize

      #Elementos mapeados
      @elemento_preencher_agencia = "login_new_access_et_branch"
      @elemento_preencher_conta = "login_new_access_et_account"
      @elemento_preencher_senha = "login_new_access_et_password"

      # Botões Mapeados
      @elemento_botao_entrar = "login_new_access_bt_login"
  end

   #Métodos de Imput
   def campo_preencher_agencia(numero_agencia)
      find_element(:id, @elemento_preencher_agencia).send_keys numero_agencia
   end

   def campo_preencher_conta(numero_conta)
      find_element(:id, @elemento_preencher_conta).send_keys numero_conta
   end

   def campo_preencher_senha(senha)
      find_element(:id, @elemento_preencher_senha).send_keys senha
   end

   #Botões
   def entrar 
      find_element(:id, @elemento_botao_entrar).click
   end

   def logar_conta(agencia, conta, senha)
      campo_preencher_agencia agencia
      campo_preencher_conta conta
      campo_preencher_senha senha
      entrar
   end
end
