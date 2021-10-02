#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade Determinante para diretor Geral

@logout
@autorizar_autoridade_determinante_dg
Cenario: Deacordo com o número gerado da OMP - OS gostaria de autorizar pela autoridade Determinante sendo autorizado pelo Diretor Geral

Dado que estou logado no sistema como 'souza.rso' e senha 'ctidpf'
Quando informo o nome do arquivo 'numero_requisicao_aprovacao_ad_e_as.text' onde está gravada o número de OMP-OS
E informo a justificativa 'justificativa autorizacao AD - script test' da autorização pela autoridade Determinante
Entao vejo a seguinte menssagem 'Operação realizada com sucesso!'