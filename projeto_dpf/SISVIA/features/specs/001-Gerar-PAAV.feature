#language: pt

@gerar_paav
Funcionalidade: Gerar PAAV da frota
SENDO um usuario com perfil de Gestor de Transporte Local
EU QUERO gerar PAAV da frota

Cenario: Gerar PAAV da frota com Sucesso 
    Dado que estou na página inicial do sistema
    Quando acesso a aba de PAAV
    E clico para gerar PAAV
    E preencho a justificativa
    Entao vejo a mensagem de sucesso