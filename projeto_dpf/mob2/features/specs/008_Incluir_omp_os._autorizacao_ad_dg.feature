#language: pt


Funcionalidade: Manter Ordem de Missão Policial e Ordem de Serviço - incluir - fluxo Autorização: Autoridade Determinante - Autoridade Superior - Autoridade Geral

Contexto: Sistema Logado
Dado  que estou logado no sistema como 'souza.rso' e senha 'ctidpf'

@logout
@OMP/OS_incluir_autoridade_determinante_diretor_geral
Cenario: Preencho o formulário de inclusão de Ordem de Missão Policial e Ordem de Serviço - fluxo a ser seguido é Autorização  pela Autoridade Determinante e Autoridade Geral

Quando eu escolho o tipo de ordem 'Missão Policial', defino a missão 'Comum', o tipo de destino 'Interestadual', informo o número do inquérito '01572019',
E informo a Unidade do Inquérito Policial 'NUCLEO DE CONTROLE DE ARMAS - NUARM/DPF/PCA/SP', Área de Atuação 'DEFESA SOCIAL E INSTITUCIONAL',
E tipo de missão 'Apresentação - Teste', Data Início '29/11/2019', Duração em dias '13', Destino UF 'Distrito Federal', Cidade 'Brasília', 
E Local de Apresentação 'Local - script test', Missão 'descrição - script test', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'dados conhecidos - script test',
E informações referente Recomendações 'recomendações - script test', unidade gestora 'unidades gestoras' unidade 'POLICIA FEDERAL - PF', ressarcimento  'sem ressarcimento', Tipo de Transporte 'Terrestre',
E Subtipo de Transporte 'Comercial',  será pago pela 'unidades gestoras', entidade 'POLICIA FEDERAL - PF', ressarcimento 'sem ressarcimento', Observação  'Observações Transportes - script test', 
E código centro de custo '321', centro de custo 'centro custo - script test', Autoridade Determinante 'não', dados em referência a Equipamento: Armamento 'armamaento - script test', justificativa inicio - fim Feriado -Final semana 'Início ou Témino do Final de Semana - essencial / Feriado - scipt test'
E Telecomunicação 'telecomunicações - script test', Vestuário 'vestuário - script test',  Outros 'outros - script test', anexar arquivo 'sim', descrição do arquivo 'anexar arquivo - script test',
E Definir Integrantes 'FLAVIA DE OLIVEIRA LEMOS', 'NILO SERGIO DE OLIVEIRA', definir chefe de equipe 'sim', nome responsável 'NILO SERGIO DE OLIVEIRA'
E interesse 'Local', unidade interessada default, valor da diária 'R$224,00' data default, horário '0700', deslocamento exige sigilo 'sim', curso de formação 'sim', mais de dez integrantes 'sim',
Entao vejo a sguinte menssagem 'Registro salvo com sucesso.'

