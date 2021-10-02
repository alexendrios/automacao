#language: pt

@manter_pessoa_juridica
Funcionalidade: Manter pessoa juridica

    @incluir_pj_importador
    Cenario: Incluir pessoa juridica Fabricante
        Quando Solicitar a inclusão de pessoa juridica
        E preencher o formulário para inclusão
        E salvar a inclusão
        Então deve-se visualizar

    @incluir_pj_revendedor
    Cenario: Incluir pessoa juridica Revendedor
        Quando Solicitar a inclusão de pessoa juridica
        E preencher o formulário para inclusão de revendedor
        E salvar a inclusão
        Então deve-se visualizar

    @cunsultar_pj_muitos_parametros
    Cenario: Consultar pessoa juridica com muitos parametros
        Quando solicitar a consulta de pessoa juridica
        E preencher muitos parametros para consulta de pessoa juridica
        Entao deve-se visualizar o resultado da consulta de pessoa juridica
    
    @cunsultar_pj_poucos_parametros
    Cenario: Consultar pessoa juridica com poucos parametros
        Quando solicitar a consulta de pessoa juridica
        E preencher poucos parametros para consulta de pessoa juridica
        Entao deve-se visualizar o resultado da consulta de pessoa juridica
    
    @detalhar_pj
    Cenario: Detalhar pessoa juridica
        Quando solicitar a consulta de pessoa juridica
        E preencher muitos parametros para consulta de pessoa juridica
        E clicar para detalhar pessoa juridica
        Entao deve-se visualizar o detalhamento
    
    # @detalhar_taurus
    # Cenario: Detalhar TAURUS
    #     Quando solicitar a consulta de pessoa juridica
    #     E realizo a consulta da fabricante TAURUS
    #     E clicar para detalhar pessoa juridica
    #     E caminhas nas abas
    #     Entao deve-se visualizar o detalhamento das vendas
    
    # @detalhar_fabricante_qualquer
    # Cenario: Detalhar fabricante qualquer
    #     Quando solicitar a consulta de pessoa juridica
    #     E preencher poucos parametros para consulta de pessoa juridica
    #     E clicar para detalhar pessoa juridica
    #     E caminhas nas abas
    #     Entao deve-se visualizar o detalhamento das vendas