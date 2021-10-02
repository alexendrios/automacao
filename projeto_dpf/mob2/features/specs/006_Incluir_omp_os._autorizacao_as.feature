#language: pt


Funcionalidade: Manter Ordem de Missão Policial e Ordem de Serviço - incluir - Autorização Autoridade Superior

Contexto: Sistema Logado
Dado  que estou logado no sistema como 'souza.rso' e senha 'ctidpf'

@logout
@OMP/OS_incluir_autoridade_superior
Cenario: preencho o formulário de inclusão  Ordem de Missão Policial e Ordem de Serviço - fluxo - Autorização Autoridade Superior

Quando eu escolho o tipo de ordem 'Missão Policial', defino a missão 'Comum', o tipo de destino 'Interestadual', informo o número do inquérito '01572019',
E informo a Unidade do Inquérito Policial 'NUCLEO DE CONTROLE DE ARMAS - NUARM/DPF/PCA/SP', Área de Atuação 'DEFESA SOCIAL E INSTITUCIONAL',
E tipo de missão 'Apresentação - Teste', Data Início '14/01/2019', Duração em dias '1', Destino UF 'Distrito Federal', Cidade 'Brasília', 
E Local de Apresentação 'Local - script test', Missão 'descrição - script test', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'dados conhecidos - script test',
E informações referente Recomendações 'recomendações - script test', unidade gestora 'unidades gestoras' unidade 'POLICIA FEDERAL - PF', ressarcimento  'sem ressarcimento', Tipo de Transporte 'Terrestre',
E Subtipo de Transporte 'PF', Observação  'Observações Transportes - script test', Autoridade Determinante 'sim', nome responsável 'RODRIGO SOUZA DE OLIVEIRA', dados em referência a Equipamento: Armamento 'armamaento - script test', código centro de custo '321', centro de custo 'centro custo - script test', 
E Telecomunicação 'telecomunicações - script test', Vestuário 'vestuário - script test',  Outros 'outros - script test', anexar arquivo 'sim', descrição do arquivo 'anexar arquivo - script test',
E Definir Integrantes 'LUCAS OLIVEIRA LESSA DE ASSIS', 'LUCAS SOARES DANTAS VALENCA', definir chefe de equipe 'sim', nome responsável 'LUCAS SOARES DANTAS VALENCA'
E interesse 'Local', unidade interessada default, valor da diária 'R$224,00' data default, horário '0700', deslocamento exige sigilo 'não', curso de formação 'não', mais de dez integrantes 'não',
E justificativa 'justificativa autorizacao AD - script test'
Entao vejo a sguinte menssagem 'Operação realizada com sucesso!'

