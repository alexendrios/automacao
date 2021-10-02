class Oficio_Judicial < SitePrism::Page
  
    element :tipo_oficio, '#tipoJudicial'
    element :uf,'#uf > option.ng-star-inserted:nth-child(8)'
    element :cidade, '#cidade > option:nth-child(2)'
    #element :jurisdicao, '#comarca'
    #element :vara_comarca_orgao_colegiado, '#varaComarca'

    element :prazo, '#prazoOperadora'

    #Atenção: os dados do Magistrado devem concordar com o conteúdo do documento anexado. 
    element :nome_magistrado,'#nomeMagistrado'
    element :cargo_magistrado,'#cargoMagistrado'
    element :telefone, '#telefoneAutoridadeDemandante'
    element :operadora, '#operadora > option:nth-child(2)'
    element :adicionar, 'Adicionar'
    element :dias_input, 'Dias'
   
    #método upload arquivo
    def anexar caminho_arquivo, campo_file
        attach_file(campo_file, caminho_arquivo, make_visible: true)
    end
    
     #criar método para data
    def data_expedicao inf_data
        find(:xpath, '/html/body/app-root/div/div/div/section/div/div/div/app-oficio-component/div[2]/div/app-criar-oficio/form/div[2]/div[4]/div[1]/div/div/p-calendar/span/input').click.set '10/07/2018'   
    end    

    def dados
        tipo_oficio.click
        find(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='*'])[2]/following::input[1]").click.set 'OFJ01'
        uf.click
        cidade.click
        find(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Jurisdição'])[1]/following::input[1]").click.set 'Poder Judiciário'
        find(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Vara Comarcar/Órgão Colegiado'])[1]/following::input[1]").click.set '24ª Vara do Trabalho'
        data_expedicao '10/12/2018'
        find(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='*'])[5]/following::input[1]").click.set 10
        operadora.click
        find(:xpath, '/html/body/app-root/div/div/div/section/div/div/div/app-oficio-component/div[2]/div/app-criar-oficio/form/div[2]').click
        
        caminho_arquivo = "C:\\automacao\\sittel\\features\\anexos\\PDF_TESTE1.pdf"
        campo_file = "customFileLang"

        anexar caminho_arquivo, campo_file
       
     end



 #def select_date
    #field =  data_expedicao[:from]
    #select date.strftime('%d'), :from => "#{field}_3i"#day
    #select date.strftime('%B'), :from => "#{field}_2i"#month
    #select date.strftime('%Y'), :from => "#{field}_1i"#year
  #end
 
end

