class Data_verificacao

=begin

    * Classe com objetivo de tratar datas:
        1 - Validação final de Semana
        2- Validação Feriado
        
    * Script desenvolvido por Alexandre Pereira Santos - Célula 386
    
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490
        
    By Jan 2018

=end   

    def initialize
        #feriados ao ser atualizado para os próximos anos por gentileza atualizar o feriado de carnaval e sexta-feira santa
        @colecao_feriado = ['01/01', '05/03', '19/04', '21/04',  '01/05', '07/09', '12/10', '02/11', '15/11', '25/12']
    end
  
    def data_final_semana(data_parametro)
        #mapeamento finais de semanas
        data = data_parametro.split('/')
        dia = data[0].to_i
        mes = data[1].to_i
        ano = data[2].to_i
        data_verificacao = Time.gm(ano, mes, dia)
        if data_verificacao.saturday? or data_verificacao.sunday?
            return true
        else 
            return false
        end
    end
    
    def data_feriado(data_parametro)
        data_feriado = data_parametro[0, 5]
        @status = nil
        @colecao_feriado.each do |verificacao|
            if verificacao == data_feriado
                @status = true
                break
            else
                @status = false
            end
        end
        return  @status
    end
  end