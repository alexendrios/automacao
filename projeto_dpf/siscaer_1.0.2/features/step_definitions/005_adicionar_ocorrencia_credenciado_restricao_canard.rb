

Quando("eu insiro o nome  {string} credenciado com restricao") do |credenciado|
    #setup
    @pesquisar_credenciado = Visualizar.new
    @cadastrar_ocorrencia = Cadastrar.new

    #interação
    @pesquisar_credenciado.pesquisar_usuario credenciado
    @pesquisar_credenciado.editar_dados
    @cadastrar_ocorrencia.avancar
end

Entao("eu insiro as informações referente a Ocorrência tipo {string} data {string} UF {string} municipio {string} aeroporto {string} descricao {string} observação {string} data de validade {string}") do |ocorrencia,
                                        data_ocorrencia, uf_ocorrencia, municipio_ocorrencia, aeroporto_vinculado,
                                        descricao, observacao, data_validade|
    #Setup Upload
    @arquivo = @arquivo = Tools.new
   
    #interação
    @pesquisar_credenciado.ver_dados_ocorrencia
    @cadastrar_ocorrencia.adicionar_nova_ocorrencia
    @cadastrar_ocorrencia.tipo_ocorrencia ocorrencia
    @cadastrar_ocorrencia.data_ocorrencia data_ocorrencia
    @cadastrar_ocorrencia.uf_ocorrencia uf_ocorrencia
    @cadastrar_ocorrencia.municipio_ocorrencia municipio_ocorrencia
    @cadastrar_ocorrencia.aeroporto_vinvulado aeroporto_vinculado
    @cadastrar_ocorrencia.ocorrencia_descricao descricao
    @cadastrar_ocorrencia.ocorrencia_observacao observacao
    @cadastrar_ocorrencia.lancar_data_validacao data_validade
    @arquivo.upload "C:\\automocao\\siscaer_1.0.2\\features\\arquivos\\PDF_TESTE5.pdf", 'documento'
    @cadastrar_ocorrencia.adicionar_ocorrencia
    @cadastrar_ocorrencia..salvar
end