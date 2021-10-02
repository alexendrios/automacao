#language: pt
#teste de commit
@manter_arma_fogo
Funcionalidade: Manter arma de fogo
  #-------------------------------------------------------------------------------------#
  #FUNCIONALIDADE PARA INCLUIR ARMA POR REVENDEDOR COM VALIDAÇÕES DE CAMPOS OBRIGATÓRIOS
  #-------------------------------------------------------------------------------------#

  @incluir_arma_revendedor 
  #CAMINHO FELIZ
  Cenario: Incluir arma por revendedor 
    Quando solicitar a inclusão de uma arma de fogo por revendedor
    E preencher o CNPJ do revendedor
    E clicar no botão para incluir arma
    E preencher o formulário
    Entao deve-se visualizar a mensagem de inclusão efetuada com sucesso

  @cnpj_revendedor_obrigatorio
  Cenario: Validar campo CNPJ obrigatório - incluir arma por revendedor
    Quando solicitar a inclusão de uma arma de fogo por revendedor
    E não preencher o CNPJ do revendedor
    Entao deve-se visualizar a mensagem de CNPJ obrigatório

  @cnpj_revendedor_invalido
  Cenario: Validar campo CNPJ invalido - incluir arma por revendedor
    Quando solicitar a inclusão de uma arma de fogo por revendedor
    E preencher o CNPJ do revendedor inválido
    Entao deve-se visualizar a mensagem de CNPJ inválido

  @numero_serie_revendedor_obrigatorio
  Cenario: Validar campo numero de série obrigatório - incluir arma por revendedor 
    Quando solicitar a inclusão de uma arma de fogo por revendedor
    E preencher o CNPJ do revendedor
    E clicar no botão para incluir arma
    E não preencher o numero de série
    Entao deve-se visualizar a mensagem de número de série obrigatório
  
  @numero_serie_revendedor_invalido
  Cenario: Validar campo numero de série inválido  - incluir arma por revendedor 
    Quando solicitar a inclusão de uma arma de fogo por revendedor
    E preencher o CNPJ do revendedor
    E clicar no botão para incluir arma
    E preencher o numero de série inválido
    Entao deve-se visualizar a mensagem de número de série invalido
  
  @campos_obrigatorios_incluir_arma_revendedor
  Cenario: Validar campos de Marca, Especie e Calibre - incluir arma por revendedor 
    Quando solicitar a inclusão de uma arma de fogo por revendedor
    E preencher o CNPJ do revendedor
    E clicar no botão para incluir arma
    E preencher o numero de série válido
    E clicar para salvar
    Entao deve-se visualizar a mensagem de campos obrigatórios

  @campo_modelo_revendedor_obrigatorio
  Cenario: Validar campos de modelo de arma - incluir arma por revendedor 
    Quando solicitar a inclusão de uma arma de fogo por revendedor
    E preencher o CNPJ do revendedor
    E clicar no botão para incluir arma
    E preencher os dados da arma
    Entao deve-se visualizar a mensagem de campo modelo obrigatorio

  #-----------------------------------------------------------------------------------------#
  #FUNCIONALIDADE PARA INCLUIR ARMA POR PROPRIETÁRIO PF COM VALIDAÇÕES DE CAMPOS OBRIGATÓRIOS
  #-----------------------------------------------------------------------------------------#

  @incluir_arma_proprietario_pf 
  #CAMINHO FELIZ
  Cenario: Incluir arma por proprietário PF 
    Quando solicitar a inclusão de uma arma de fogo por proprietario PF
    E preencher o CPF do prprietario
    E clicar no botão para incluir arma
    E preencher o formulário
    Entao deve-se visualizar a mensagem de inclusão efetuada com sucesso

  @cpf_prorietario_pf_obrigatorio
  Cenario: Validar campo CPF obrigatório - incluir arma por proprietário PF
    Quando solicitar a inclusão de uma arma de fogo por proprietario PF
    E não preencher o CPF do proprietario
    Entao deve-se visualizar a mensagem de CPF obrigatório

  @cpf_prorietario_pf_invalido
  Cenario: Validar campo CPF invalido - incluir arma por proprietário PF
    Quando solicitar a inclusão de uma arma de fogo por proprietario PF
    E preencher o CPF do proprietário inválido
    Entao deve-se visualizar a mensagem de CPF inválido
  
  @numero_serie_prorietario_pf_obrigatorio
  Cenario: Validar campo numero de série obrigatório - incluir arma por proprietário PF 
    Quando solicitar a inclusão de uma arma de fogo por proprietario PF
    E preencher o CPF do prprietario
    E clicar no botão para incluir arma
    E não preencher o numero de série
    Entao deve-se visualizar a mensagem de número de série obrigatório
  
  @numero_serie_prorietario_pf_invalido
  Cenario: Validar campo numero de série inválido  - incluir arma por proprietário PF 
    Quando solicitar a inclusão de uma arma de fogo por proprietario PF
    E preencher o CPF do prprietario
    E clicar no botão para incluir arma
    E preencher o numero de série inválido
    Entao deve-se visualizar a mensagem de número de série invalido
  
  @campos_obrigatorios_incluir_arma_prorietario_pf
  Cenario: Validar campos de Marca, Especie e Calibre - incluir arma por proprietário PF 
    Quando solicitar a inclusão de uma arma de fogo por proprietario PF
    E preencher o CPF do prprietario
    E clicar no botão para incluir arma
    E preencher o numero de série válido
    E clicar para salvar
    Entao deve-se visualizar a mensagem de campos obrigatórios

  # @campo_modelo_prorietario_pf_obrigatorio
  # Cenario: Validar campos de modelo de arma - incluir arma por proprietário PF 
  #   Quando solicitar a inclusão de uma arma de fogo por proprietario PF
  #   E preencher o CPF do prprietario
  #   E clicar no botão para incluir arma
  #   E preencher os dados da arma
  #   Entao deve-se visualizar a mensagem de campo modelo obrigatorio

  #-----------------------------------------------------------------------------------------#
  #FUNCIONALIDADE PARA INCLUIR ARMA POR PROPRIETÁRIO PJ COM VALIDAÇÕES DE CAMPOS OBRIGATÓRIOS
  #-----------------------------------------------------------------------------------------#

  @incluir_arma_proprietario_pj 
  #CAMINHO FELIZ
  Cenario: Incluir arma por proprietário PJ 
    Quando solicitar a inclusão de uma arma de fogo por proprietario PJ
    E preencher o CNPJ do prprietario
    E clicar no botão para incluir arma
    E preencher o formulário
    Entao deve-se visualizar a mensagem de inclusão efetuada com sucesso

  @cnpj_prorietario_pj_obrigatorio
  Cenario: Validar campo CNPJ obrigatório - incluir arma por proprietário PJ
    Quando solicitar a inclusão de uma arma de fogo por proprietario PJ
    E não preencher o CNPJ do proprietario
    Entao deve-se visualizar a mensagem de CNPJ obrigatório

  @cnpj_prorietario_pj_invalido
  Cenario: Validar campo CNPJ invalido - incluir arma por proprietário PJ
    Quando solicitar a inclusão de uma arma de fogo por proprietario PJ
    E preencher o CNPJ do proprietário inválido
    Entao deve-se visualizar a mensagem de CNPJ inválido
  
  @numero_serie_prorietario_pj_obrigatorio
  Cenario: Validar campo numero de série obrigatório - incluir arma por proprietário PJ 
    Quando solicitar a inclusão de uma arma de fogo por proprietario PJ
    E preencher o CNPJ do prprietario
    E clicar no botão para incluir arma
    E não preencher o numero de série
    Entao deve-se visualizar a mensagem de número de série obrigatório
  
  @numero_serie_prorietario_pj_invalido
  Cenario: Validar campo numero de série inválido  - incluir arma por proprietário PJ 
    Quando solicitar a inclusão de uma arma de fogo por proprietario PJ
    E preencher o CNPJ do prprietario
    E clicar no botão para incluir arma
    E preencher o numero de série inválido
    Entao deve-se visualizar a mensagem de número de série invalido
  
  @campos_obrigatorios_incluir_arma_prorietario_pj
  Cenario: Validar campos de Marca, Especie e Calibre - incluir arma por proprietário PJ
    Quando solicitar a inclusão de uma arma de fogo por proprietario PJ
    E preencher o CNPJ do prprietario
    E clicar no botão para incluir arma
    E preencher o numero de série válido
    E clicar para salvar
    Entao deve-se visualizar a mensagem de campos obrigatórios

  # @campo_modelo_prorietario_pj_obrigatorio
  # Cenario: Validar campos de modelo de arma - incluir arma por proprietário PJ 
  #   Quando solicitar a inclusão de uma arma de fogo por proprietario PJ
  #   E preencher o CNPJ do prprietario
  #   E clicar no botão para incluir arma
  #   E preencher os dados da arma
  #   Entao deve-se visualizar a mensagem de campo modelo obrigatorio
  
  #-----------------------------------------------------------------------------------------#
  #FUNCIONALIDADE PARA INCLUIR ARMA POR OCORRÊNCIA COM VALIDAÇÕES DE CAMPOS OBRIGATÓRIOS
  #-----------------------------------------------------------------------------------------#
  
  @incluir_arma_ocorrencia 
  #CAMINHO FELIZ
  Cenario: Incluir arma por ocorrencia
    Quando solicitar a inclusão de uma arma de fogo por ocorrencia
    E preencher o formulário para adicionar arma
    E adicionar a arma de fogo
    E preencher o formulario de ocorrencia
    Entao deve-se visualizar a mensagem de operacao efetuada com sucesso

  @campos_obrigatorios_incluir_arma_ocorrencia
  Cenario: Validar campos do formulário de incluir arma - incluir arma por ocorrencia
    Quando solicitar a inclusão de uma arma de fogo por ocorrencia
    E clicar em associar ocorrencia sem preencher o formulario
    Entao deve visualizar as mensagens de campos obrigatórios

  @campos_obrigatorios_incluir_ocorrencia
  Cenario: Validar campos do formulário de incluir ocorrência - incluir arma por ocorrencia
    Quando solicitar a inclusão de uma arma de fogo por ocorrencia
    E preencher o formulário para adicionar arma
    E adicionar a arma de fogo
    E clicar em salvar sem preencher o formulario de ocorrencia
    Entao deve-se visualizar as mensagens de campos obrigatórios no formulario de ocorrencia

#-----------------------------------------------------------------------------------------#
  #FUNCIONALIDADE PARA DETALHAR ARMA DE FOGO COM VALIDAÇÕES DE CAMPOS OBRIGATÓRIOS
#-----------------------------------------------------------------------------------------#
  
  @pesquisar_detalhar_arma 
  #CAMINHO FELIZ
  Cenario: Pesquisar e detalhar arma de fogo
    Quando solicitar a pesquisa de arma de fogo
    E preencher os parametros para consulta
    E clicar no botão para detalhar arma
    Entao deve-se visualizar o detalhamento de arma de fogo
  
  @campos_pesquisar_arma_obrigatorios
  Cenario: Validar campos de pesquisa de arma de fogo
    Quando solicitar a pesquisa de arma de fogo
    E não preencher os parametros para consulta
    Entao deve-se visualizar a mensagem de campos obrigatórios para realizar consulta

  @registros_nao_encontrados
  Cenario: Validar mensagem de registros não encontrados
    Quando solicitar a pesquisa de arma de fogo
    E preencher parametros não cadastrados no sistema para consulta
    Entao deve-se visualizar a mensagem de registros não encontrados

#-----------------------------------------------------------------------------------------#
  #FUNCIONALIDADE PARA ALTERAR ARMA DE FOGO COM VALIDAÇÕES DE CAMPOS OBRIGATÓRIOS
#-----------------------------------------------------------------------------------------#

  @alterar_arma_fogo 
  #CAMINHO FELIZ
  Cenario: Alterar arma de fogo
    Quando solicitar a pesquisa de arma de fogo
    E preencher os parametros para consulta
    E clicar no botão para alterar arma
    E realizar as alterações da arma de fogo
    E preencher o motivo da alteração
    Entao deve visualizar a mensagem de operacao efetuada com sucesso
  
  @campos_obrigatorios_formulario_alterar_arma_fogo
  Cenario: Validar campos do formulário de alterar arma - Alterar arma de fogo
    Quando solicitar a pesquisa de arma de fogo
    E preencher os parametros para uma consulta 
    E clicar no botão para alterar arma
    E deixar campos obrigatórios em branco
    Entao deve-se visualizar a mensagem de registros obrigatorios 

  @campos_motivo_obrigatorio_formulario_alterar_arma_fogo
  Cenario: Validar campo motivo - Alterar Arma de fogo
    Quando solicitar a pesquisa de arma de fogo
    E preencher os parametros para uma consulta
    E clicar no botão para alterar arma
    E realizar as alterações da arma de fogo
    E não preencher o motivo da alteração
    Entao deve-se visualizar a mensagem de motivo obrigatorio
