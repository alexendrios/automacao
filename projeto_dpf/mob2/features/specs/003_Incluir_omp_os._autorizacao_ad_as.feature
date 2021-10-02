#language: pt


Funcionalidade: Manter Ordem de Missão Policial e Ordem de Serviço - incluir - para autorização Autoridade Determinante e Autoridade Superior

Contexto: Sistema Logado
Dado  que estou logado no sistema como 'souza.rso' e senha 'ctidpf'

@logout
@OMP/OS_incluir_fluxo_autoridade_determinante_autoridade_superior
Cenario: preencho o formulário de Manter Ordem de Missão Policial e Ordem de Serviço - fluxo - autorização Autoridade Determinante e Autoridade Superior

Quando eu escolho o tipo de ordem 'Missão Policial', defino a missão 'Comum', o tipo de destino 'Interestadual', informo o número do inquérito '01572019',
E informo a Unidade do Inquérito Policial 'NUCLEO DE CONTROLE DE ARMAS - NUARM/DPF/PCA/SP', Área de Atuação 'DEFESA SOCIAL E INSTITUCIONAL',
E tipo de missão 'Apresentação - Teste', Data Início '14/01/2019', Duração em dias '1', Destino UF 'Distrito Federal', Cidade 'Brasília', 
E Local de Apresentação 'Local - script test', Missão 'descrição - script test', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'dados conhecidos - script test',
E informações referente Recomendações 'recomendações - script test', unidade gestora 'unidades gestoras' unidade 'POLICIA FEDERAL - PF', ressarcimento  'sem ressarcimento', Tipo de Transporte 'Terrestre',
E Subtipo de Transporte 'PF', Observação  'Observações Transportes - script test', Autoridade Determinante 'não', dados em referência a Equipamento: Armamento 'armamaento - script test', código centro de custo '321', centro de custo 'centro custo - script test', 
E Telecomunicação 'telecomunicações - script test', Vestuário 'vestuário - script test',  Outros 'outros - script test', anexar arquivo 'sim', descrição do arquivo 'anexar arquivo - script test',
E Definir Integrantes 'FLAVIO EDUARDO NOGUEIRA NAVES', 'FLAVIO HENRIQUE DINIZ OLIVEIRA', definir chefe de equipe 'sim', nome responsável 'FLAVIO HENRIQUE DINIZ OLIVEIRA'
E interesse 'Local', unidade interessada default, valor da diária 'R$224,00' data default, horário '0700', deslocamento exige sigilo 'não', curso de formação 'não', mais de dez integrantes 'não',
Entao vejo a sguinte menssagem 'Registro salvo com sucesso.'

