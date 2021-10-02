class Conexao
require "mysql2"
    
    def initialize
        @status = ""
    end

    def conectar
        begin
            db = Mysql2::Client.new(:host => "localhost",
                :username => "bb_qa",
                :password => 'bbqa_123',
                :database => 'qa_bb_projetos_sonar')  

            @status = "Conectado ao Banco de Dados"
            return @status, db
        rescue => exception
            @status = "Erro ao Conectar no Banco de Dados\n#{exception.message}\n"
            return @status          
        end
    end

    def limpar_registros_tabela
        begin
            retorno, db = conectar
            db.query("TRUNCATE TABLE qa_projetos;")
            @status = "Banco de Dados Limpo!!"
            return @status 
        rescue => exception
            @status = "Erro ao Realizar a Limpeza dos Dados na Tabela\n#{exception.message}\n"
            return @status 
        end
    end

    def povoar_tabela(registros)
        begin
            retorno, db = conectar
            limpar_registros_tabela
            registros.each do |registro|
                
                db.query("insert into qa_projetos (
                    SIGLA, QA, DATA_EXTRACAO, HORA_EXTRACAO, PROJETO, BUILD, MES_DIA,
                    ANO, HORARIO, BUGS, NOTA_BUGS, CODE_SMELLS, NOTA_CODE_SMELLS, 
                    VULNERABILITIES, NOTA_VULNERABILITIES, COVERAGE) values (
                        '#{registro[0]}', '#{registro[1]}', '#{registro[2]}', '#{registro[3]}', 
                        '#{registro[4]}', '#{registro[5]}', '#{registro[6]}', #{registro[7].to_i}, 
                        '#{registro[8]}', #{registro[9].to_i}, '#{registro[10]}', #{registro[11].to_i}, 
                        '#{registro[12]}', #{registro[13].to_i}, '#{registro[14]}', #{registro[15].to_f}
                    );")
            end 
            @status = "Registros Lançados no Banco de Dados!!"
            return @status  
        rescue => exception
            @status = "Erro ao Realizar o lançamento dos Registros na Tabela do Banco de Dados\n#{exception.message}\n"
            return @status 
        end
    end
end

