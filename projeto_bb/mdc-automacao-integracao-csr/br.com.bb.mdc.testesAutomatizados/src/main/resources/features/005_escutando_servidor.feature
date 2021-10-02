#language:pt
Funcionalidade: Escutando o servidor
dado eu como usuário,
desejo analisar os dados processados
informando as seguintes informações

- o local do arquivo
- ao nome do arquivo
- e o local onde devo salvar o report_html
- para visualizar os dados referente ao arquivo CSR717


  @005_escutando_servidor
  Cenário: Escutando o Servidor após o envio do Arquivo CSR714
    Dado que acesso o servidor "\\172.17.202.176\csexport"
    Quando busco a resposta do servidor pelo arquivo "CSR717.D191224.R000012"
    E analiso o seu conteúdo
    E acesso relatório gerado no endereço "C:\Users\Alexandre Santos\eclipse-workspace\br.com.bb.mdc.testesAutomatizados\target\report_html\reportCSR717.html"
    Então vejo a seguinte mensagem "REPORT CSR717"

