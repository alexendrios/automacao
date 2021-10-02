#select

class Criar_caso < SitePrism::Page
  
    #element :novo_caso_miner, "btn-novo-caso"
    element :input_nome, "#input-nome-caso"
    element :nome_para_o_caso_Miner, "#input-nome-caso"
    element :caso_simba, "#select-caso-simba > option:nth-child(3)"
    element :input_tamanho, '#tablesColumnInputtamanhoArquivoFormatado'
    element :tamanho, "#tablesColumnInputtamanhoArquivoFormatado"
    element :selecionar_todos, '#table-atendimento-checkAll' 
    element :criar, "#btn-criar"
   
    def criar_novo_caso
        click_button 'Novo Caso Miner'
        input_nome.click
        nome_para_o_caso_Miner.set 'Automatizado_01'
        caso_simba.click
        input_tamanho.click
        tamanho.set "1.3"
        selecionar_todos.click
        criar.click
        
    end
end