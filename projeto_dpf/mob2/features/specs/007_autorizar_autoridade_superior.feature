#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade autoridade Superior após a iclusão realizada pelo perfil Autoridade Determinante

@logout
@autorizar_autoridade_superior
Cenario: Deacordo com o número gerado da OMP/OS gostaria de autorizar pela autoridade Superior visto que o fluxo de iclusão realizada pelo perfil Autoridade Determinante 

Dado que estou logado no sistema como 'delano.dcb' e senha 'ctidpf'
Quando eu informo: que a OMP - OSP foi Analisadas pelo Assessor 'não',  nome do arquivo 'numero_requisicao_aprovacao_ad_e_as.text' onde está gravada o número de OMP-OS
Entao vejo a seguinte menssagem 'Operação realizada com sucesso!'