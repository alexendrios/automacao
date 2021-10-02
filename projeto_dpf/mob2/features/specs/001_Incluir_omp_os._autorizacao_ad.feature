#language: pt


Funcionalidade: Manter Ordem de Missão Policial e Ordem de Serviço - incluir

Contexto: Sistema Logado
Dado  que estou logado no sistema como 'heron.hwpb' e senha 'ctidpf'

@logout
@OMP/OS_incluir_fluxo_autorizacao__autoridade_determinante
Cenario: preencho o formulário de inclusão de ordem - fluxo - autorizacao para autoridade determinante

Quando eu escolho o tipo de ordem 'Missão Policial', defino a missão 'Comum', o tipo de destino 'Local', informo o número do inquérito '01382019',
E informo a Unidade do Inquérito Policial 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS  - DELEPREV/DRCOR/SR/PF/SP', Área de Atuação 'apoio operacional 123',
E tipo de missão 'TIPO DE MISSÃO POLICIAL - DIREX', Data Início '07/01/2019', Data Término '15/01/2019', Duração em dias '9', Destino UF 'São Paulo', Cidade 'Cajuru', 
E Local de Apresentação 'Local - script test', Missão 'descrição - script test', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'dados conhecidos - script test',
E informações referente Recomendações 'recomendações - script test', Tipo de Transporte 'Terrestre', Subtipo de Transporte 'PF', Observação  'Observações Transportes - script test',
E Autoridade Determinante 'não', dados em referência a Equipamento: Armamento 'armamaento - script test', Telecomunicação 'telecomunicações - script test', Vestuário 'vestuário - script test',
E Outros 'outros - script test', anexar arquivo 'sim', descrição do arquivo 'anexar arquivo - script test', Definir Integrantes 'JOAO CLAUDIO NABAS',
Entao vejo a sguinte menssagem 'Registro salvo com sucesso.'

