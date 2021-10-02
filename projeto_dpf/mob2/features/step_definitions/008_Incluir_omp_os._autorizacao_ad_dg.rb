Quando("Subtipo de Transporte {string},  será pago pela {string}, entidade {string}, ressarcimento {string}, Observação  {string},") do |subtipo_transporte,
                                                                                                        unidade_gestora, entidade, ressarcimento, observacoes|
    
    #setup
    @dados[24] = subtipo_transporte 
    @dados[26] = unidade_gestora
    @dados[27] = entidade
    @dados[28] = ressarcimento
    @dados[25] = observacoes
end

Quando("código centro de custo {string}, centro de custo {string}, Autoridade Determinante {string}, dados em referência a Equipamento: Armamento {string}, justificativa inicio - fim Feriado -Final semana {string}") do |codigo_custo, 
                                                                                                                                                    centro_custo, autoridade_determinante, armamento,just_miss_inicio_final_semana_feriado|

    #setup
    @dados[38] = codigo_custo
    @dados[39] = centro_custo
    @dados[30] = autoridade_determinante
    @dados[32] = armamento

    @integrantes[9] = just_miss_inicio_final_semana_feriado

end