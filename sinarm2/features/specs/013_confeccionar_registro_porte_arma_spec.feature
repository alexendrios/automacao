#language: pt
@confeccionar_registro_porte_arma_fogo
Funcionalidade: Confeccionar porte e registro de arma de fogo

    
    @incluir_porte_arma_fogo
    Cenario: Incluir porte funcional
        Quando solicitar inclusão de porte funcional
        E informar os dados para pesquisa de um servidor publico
        E seleciono o servidor
        E preencho os dados do porte
        E clico em criar porte
        Entao deve-se visualizar os dados do porte cadastrado
    
    # Este cenário só será executado se houver um porte de arma na massa de teste

    # @confeccionar_porte_arma_fogo_dados_porte
    # Cenario: Confeccionar porte de arma de fogo _ Por dados do porte
    #     Quando solicitar confeccionar registro ou porte de arma de fogo
    #     E preencher os dados do porte
    #     E adicionar a fila de impressão
    #     E clicar no botão para imprimir
    #     Entao deve-se visualizar o pdf de impressão 

    # @confeccionar_porte_arma_fogo_dados_emissao
    # Cenario: Confeccionar porte de arma de fogo _ Por dados de emissão
    #     Quando solicitar confeccionar registro ou porte de arma de fogo
    #     E preencher os dados de emissão
    #     E adicionar a fila de impressão
    #     E clicar no botão para imprimir
    #     Entao deve-se visualizar o pdf de impressão 

    # @confeccionar_registro_dados_arma_fogo
    # Cenario: Confeccionar registro de arma de fogo _ Por dados da arma de fogo
    #     Quando solicitar confeccionar registro ou porte de arma de fogo
    #     E preencher os dados de registro por arma de fogo
    #     E adicionar registro a fila de impressão
    #     E clicar no botão para imprimir
    #     Entao deve-se visualizar o pdf de impressão 
    
    # @confeccionar_registro_dados_registro
    # Cenario: Confeccionar registro de arma de fogo _ Por dados do registro
    #     Quando solicitar confeccionar registro ou porte de arma de fogo
    #     E preencher os dados de registro
    #     E adicionar registro a fila de impressão
    #     E clicar no botão para imprimir
    #     Entao deve-se visualizar o pdf de impressão
    
    # @confeccionar_registro_dados_proprietario
    # Cenario: Confeccionar registro de arma de fogo _ Por dados do proprietario
    #     Quando solicitar confeccionar registro ou porte de arma de fogo
    #     E preencher os dados do proprietario
    #     E adicionar registro a fila de impressão
    #     E clicar no botão para imprimir
    #     Entao deve-se visualizar o pdf de impressão