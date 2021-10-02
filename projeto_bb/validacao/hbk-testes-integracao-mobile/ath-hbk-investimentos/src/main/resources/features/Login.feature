#language: pt

Funcionalidade: Realizar o Login no sistema HBK

@Login
Cenario: Relizar o login no aplicativo HBK
    Dado que acessei a pagina inicial doa aplicativo
    Quando eu informo a agência "7988-0", número da conta "48290-0", senha de oito dígitos "88888888"
    Entao efetuo o login com sucesso