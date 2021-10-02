#language: pt

Funcionalidade: Adicionar Ocorrência

Contexto: Sistema Logado
Dado que eu estou logado como "juliana.jp" e 'ctidpf'

@adicionar_ocorrencia_credenciado_restricao
Cenario: Adicionar Ocorrência do Credenciado com Restrição no CANARD
Quando eu insiro o nome  'ANTONIO SANTOS' credenciado com restricao
Entao eu insiro as informações referente a Ocorrência tipo 'RELATÓRIO DE INTELIGÊNCIA' data '23/01/2015' UF 'DF' municipio 'Brasília' aeroporto 'BSB' descricao 'Teste - Script Automação de Testes' observação 'Teste - Script Automação de Testes' data de validade '02/01/2019'
#Entao eu vejo o nome cadastrado 'ANTONIO SANTOS'