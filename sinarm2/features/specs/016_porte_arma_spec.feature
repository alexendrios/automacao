#language: pt
@porte_arma_de_fogo
Funcionalidade: Consultar e detalhar porte de arma 

    # Liberar cenários após a criação de um número de porte de arma
    @consultar_porte_arma_fogo
    Cenario: Consultar porte de arma de fogo
        Quando solicitar a pesquisa de porte de arma de fogo
        E preencher os parametros para consulta de porte de arma de fogo
        Entao deve-se visualizar o resultado da consulta
        
    @consultar_porte_campo_obrigatorio
    Cenario: Consultar porte de arma de fogo - Campo de consulta obrigatório
        Quando solicitar a pesquisa de porte de arma de fogo
        E não preencher os parametros para consulta de porte de arma de fogo
        Entao deve-se visualizar a mensagem de campo obrigatorio

    @detalhar_porte_arma_fogo
    Cenario: Detalhar porte de arma de fogo
        Quando solicitar a pesquisa de porte de arma de fogo
        E preencher os parametros para consulta de porte de arma de fogo
        E clicar no botão para detalhar porte
        Entao deve-se visualizar o detalhamento de porte de arma de fogo