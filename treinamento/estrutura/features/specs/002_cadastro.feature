#language: pt

@002_cadastro
Funcionalidade: Realizar Cadastrouando 

Cenário: Preenchendo os dados e se Cadastrando na Aplicação
Dado que eu visite o webSite "http://automationpractice.com/index.php"
Quando no menu escolho "logar",
E ao inserir o e-mail 'ccmn@hotmail.com' clico no botão Create en account,
E escolho a forma de Tratamento "Senhora", insiro o primeiro nome "Cacau", insiro o sobrenome "Coutto",
E escolho uma senha "0009fr", informo a data de nascimento '30/01/1980', infomo que quero receber notícias "SIM",
E informo que gostaria de receber ofertas 'sim', informo a companhia "Cia.test", o endereço "3888 State St",
E informo a cidade '100 Palms', o estado 'California', código postal '92274', país 'Estados Unidos',
E informo anotações gerais "Testando a aplicação", telefone '151022235555', celular '15109990000',
E infomo o endereço de entrega 'Vila dos sonhos' e clico no botão cadastrar
Então eu visualizo a seguinte mensagem 'MY ACCOUNT'
  