#select

class Excluir_caso_miner < SitePrism::Page
  
    element :icone_excluir, "#table-listar-caso-remove0"
    element :confirmar_modal, "p-footer > button.btn.btn-primary"
   
    def excluir_caso
        icone_excluir.click
        confirmar_modal.click              
    end
end


