
Quando("tipo de missão {string}, Data Início {string}, Duração em dias {string}, Destino UF {string}, Cidade {string},") do |tipo_missao, data_inicio, 
                                                                                                                        duracao_dias, destino_uf, cidade|
   
    #setup
    @dados[9] = tipo_missao
    @dados[10] = data_inicio
    @dados[12] = duracao_dias
    @dados[4] = destino_uf
    @dados[5] = cidade
end
  
Quando("informações referente Recomendações {string}, unidade gestora {string} unidade {string}, ressarcimento  {string}, Tipo de Transporte {string},") do |recomendacoes, unidade_gestora, 
                                                                                                                                                    unidade, ressarcimento, tipo_transporte|
     
     #setup
     @dados[18] = recomendacoes
     @dados[19] = unidade_gestora
     @dados[20] = unidade
     @dados[21] = ressarcimento 
     @dados[23] = tipo_transporte
end
  
Quando("Subtipo de Transporte {string}, Observação  {string}, Autoridade Determinante {string}, dados em referência a Equipamento: Armamento {string}, código centro de custo {string}, centro de custo {string},") do |subtipo_transporte, observacoes, 
    autoridade_determinante, armamento, codigo_custo, centro_custo|

    #setup
    @dados[24] = subtipo_transporte 
    @dados[25] = observacoes
    @dados[30] = autoridade_determinante
    @dados[32] = armamento
    @dados[38] = codigo_custo
    @dados[39] = centro_custo

end

Quando("Telecomunicação {string}, Vestuário {string},  Outros {string}, anexar arquivo {string}, descrição do arquivo {string},") do |telecomunicacoes, vestuario, outros,
                                                                                                                                         anexar_arquivo, descricao_arquivo|

    #setup
    @dados[33] = telecomunicacoes
    @dados[34] = vestuario
    @dados[35] = outros
    @dados[36] = anexar_arquivo
    @dados[37] = descricao_arquivo
end
  
Quando("Definir Integrantes {string}, {string}, definir chefe de equipe {string}, nome responsável {string}") do |integrante1, integrante2, 
    chefe_equipe, nome_responsavel|

    #setup
    @integrantes[0] = [integrante1, integrante2]
    @integrantes[1] = chefe_equipe
    @integrantes[2] = nome_responsavel
end
  
Quando("interesse {string}, unidade interessada default, valor da diária {string} data default, horário {string}, deslocamento exige sigilo {string}, curso de formação {string}, mais de dez integrantes {string},") do |interesse, 
    valor_diaria, horario_apresentacao, deslocamento_sigilo, curso_formacao, mais_dez_integrantes|
    
    #setup
    @integrantes[3] = interesse
    @integrantes[5] = valor_diaria
    @integrantes[6] = ''
    @integrantes[7] = horario_apresentacao
    @integrantes[8] = [deslocamento_sigilo, curso_formacao, mais_dez_integrantes]
    
    #realizando o teste
    @formulario.preencher_formulario @dados
    @formulario.definir_integrantes @integrantes
    nome_arquivo = 'numero_requisicao_aprovacao_ad_e_as.text'
    @formulario.enviar_formulario nome_arquivo
end

