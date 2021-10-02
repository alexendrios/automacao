#language:pt
Funcionalidade: Analisando o Arquivo CSR724

  @004_analise_CSR724_servidor
  Cenário: analisando o arquivo CSR724 gerado no servidor após o envio do CRS714
    Dado eu acesso o servidor informando o endereço "\\172.17.202.176\csexport"
    Quando busco o analiso o arquivo "CSR724.D200115.R0000010"
    E acesso relatório gerado no endereço "C:\Users\Alexandre Santos\eclipse-workspace\br.com.bb.mdc.testesAutomatizados\target\report_html\confirmacaoCSR724.html"
    Então  eu visualizo a seguinte menssagem "SEM OCORRÊNCIA"
