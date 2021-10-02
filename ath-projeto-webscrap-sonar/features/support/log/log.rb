class Log
  def initialize
    @tools = Tools.new
  end

  def registro_cabecalho
    return "
                                                                                                                                                     
                                                                                                                                                      
                    10                1                                                                                                               
                 10000001           1000                                                                                                              
               100000000000      1000001                                                                                                              
            100000001000000001  00000001                                                                                                              
          00000001     100000000  101                                                                                                                 
       1000000001         00000000                                                                                                                    
    100000000000000    101  1000000001                                                                                                                
   0000000000000001 10000001  1000000001                                                                                                              
    100000000001  100000001  100000001         000000   100   100  100  10000  100001    1000001   00001     000000 100000   100    000001 001 00     
       100001   00000001  100000001            000 000  0000  1000  00 000110 00011001   100 1001 0011000    001 001100 000  0000   001    001 00     
             10000001   10000001               0000001 001101 10000100 00     00    00   100   00101   001   000000 1001001 101101   10001 001 00     
           00000001  10000001                  001 100 000000 101 0000 000110 10011001   100  001 0011100    001 001100 00  000000      00 001 00111  
       100000001   00000001  100001            100000 101  101 01  100  10000  10001     100000    10001     000001 101 101101  100 10000  101 00000  
    1000000001  10000001   00000000001                                                                                                                
   000000001   0000001  1000000000000001                                                                                                              
    1000000001  101    000000000000001                                                                                                                
       100000000         1000000001                                             GEINT - WEBSCRAP - SONAR                                                                                               
     11   1000000001    10000001                                                                                                                      
   0000001  100000000000000001                                                                         vesão 1.0                                               
  1000001      100000000001                                                                                                                           
  1000            000000                                                                                                                              
   1                11                                                                                                                                
                                                                                                                                                                
"
  end

  def log_login(log)
    data = @tools.data_atual
    puts "Extração dos Dados Iniciado   *****\n* #{data[0]} - #{data[1]}\n#{registro_cabecalho}\n#{log}"
    @@reg += "Execução Extração dos Dados Iniciado:\n* #{data[0]} - #{data[1]}\n#{registro_cabecalho}\n#{log}\n"
  end

  def log_registros(log)
    puts log
    @@reg += "#{log}\n"
  end

  def log_formalizando_dados(log)
    if log.eql? "Erro ao executar a Formalização dos Dados\n....\nWEBSCRAP Abortado\n"
      @@reg += "#{log}\n"
    end
  end

  def log_criar_arquivo_txt
    saida = "log.txt"
    @tools.gravar_dados saida, @@reg
  end
end
