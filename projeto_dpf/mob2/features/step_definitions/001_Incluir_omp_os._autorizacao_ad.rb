Dado("que estou logado no sistema como {string} e senha {string}") do |usuario, senha|
   #setup dps testes
    visit '/'
    @login = Login.new
    @login.logar(usuario, senha)

    @formulario = IncluirOmpOs.new
    
    #Variável referente aos dados padrões do formulário
    @dados = []
    #Variável referente aos dados dos integrantes
    @integrantes = []
end
  
Quando("eu escolho o tipo de ordem {string}, defino a missão {string}, o tipo de destino {string}, informo o número do inquérito {string},") do |tipo_ordem, missao, 
                                                                                                                                     tipo_destino, numero_inquerito|
    @dados[0] = tipo_ordem
    @dados[1] = missao
    @dados[2] = tipo_destino 
    @dados[6] = numero_inquerito
end
  
Quando("informo a Unidade do Inquérito Policial {string}, Área de Atuação {string},") do |unidade_inquerito, area_atuacao|
    @dados[8] = unidade_inquerito
    @dados[7] = area_atuacao
end
  
Quando("tipo de missão {string}, Data Início {string}, Data Término {string}, Duração em dias {string}, Destino UF {string}, Cidade {string},") do |tipo_missao, data_inicio, 
                                                                                                                                    data_fim, duracao_dias, destino_uf, cidade|
    @dados[9] = tipo_missao
    @dados[10] = data_inicio
    @dados[11] = data_fim
    @dados[12] = duracao_dias
    @dados[4] = destino_uf
    @dados[5] = cidade
end
  
Quando("Local de Apresentação {string}, Missão {string}, Órgãos Parceiros {string}, Dados Conhecidos - Restrições {string},") do |local_apresentacao, missao_descricao,
                                                                                                                                     orgaos_parceiros, dados_conhecidos|

    @dados[13] = local_apresentacao
    @dados[14] = missao_descricao
    @dados[15] = orgaos_parceiros
    @dados[17] = dados_conhecidos
end
  
Quando("informações referente Recomendações {string}, Tipo de Transporte {string}, Subtipo de Transporte {string}, Observação  {string},") do |recomendacoes, tipo_transporte, 
                                                                                                                                                subtipo_transporte, observacoes|
    @dados[18] = recomendacoes
    @dados[23] = tipo_transporte
    @dados[24] = subtipo_transporte 
    @dados[25] = observacoes
end
  
Quando("Autoridade Determinante {string}, dados em referência a Equipamento: Armamento {string}, Telecomunicação {string}, Vestuário {string},") do |autoridade_determinante, armamento,
                                                                                                                                                            telecomunicacoes, vestuario|
     @dados[30] = autoridade_determinante
     @dados[32] = armamento
     @dados[33] = telecomunicacoes
     @dados[34] = vestuario
end

Quando("Outros {string}, anexar arquivo {string}, descrição do arquivo {string}, Definir Integrantes {string},") do |outros, anexar_arquivo, descricao_arquivo, def_integrantes|
    @dados[35] = outros
    @dados[36] = anexar_arquivo
    @dados[37] = descricao_arquivo
    @integrantes[0] = [def_integrantes]

    #realizando o teste
    @formulario.preencher_formulario @dados
    @formulario.definir_integrantes @integrantes
    nome_arquivo = 'numero_requisicao_aprovacao_ad.text'
    @formulario.enviar_formulario nome_arquivo                                                                         
end 

Entao("vejo a sguinte menssagem {string}") do |menssagem|
    expect(page).to have_content menssagem
end