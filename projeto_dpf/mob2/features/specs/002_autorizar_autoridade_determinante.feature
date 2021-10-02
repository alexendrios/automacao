#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade Determinante somente

@logout
@autorizar_autoridade_determinante
Cenario: Deacordo com o número gerado da OMP/OS gostaria de autorizar pela autoridade Determinante 

Dado que estou logado no sistema como 'neiva.nmsv' e senha 'ctidpf'
Quando eu informo o nome do arquivo 'numero_requisicao_aprovacao_ad.text' onde está gravada o número de OMP-OS
E a justificativa 'justificativa autorizacao AD - script test' da autorização pela autoridade Determinante
Entao vejo a seguinte menssagem 'Operação realizada com sucesso!'