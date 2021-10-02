#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade Determinante Depedendo de Autorização da autoridade Superior

@logout
@autorizar_autoridade_determinante_as
Cenario: Deacordo com o número gerado da OMP/OS gostaria de autorizar pela autoridade Determinante prosseguindo posteriormente para autorizar pela autoridade Superior

Dado que estou logado no sistema como 'ribeiro.cjor' e senha 'ctidpf'
Quando eu informo o nome do arquivo 'numero_requisicao_aprovacao_ad_e_as.text' onde está gravada o número de OMP-OS
E a justificativa 'justificativa autorizacao AD - script test' da autorização pela autoridade Determinante
Entao vejo a seguinte menssagem 'Operação realizada com sucesso!'