#language: pt

@Excluir_Caso_Miner

Funcionalidade: Excluir_Caso_Miner
SENDO um usuário autenticado no sistema
EU QUERO excluir um caso miner
PARA remover da lista dos atendimentos que serão analisados

Cenario: Excluir_Caso_Miner

Dado que estou na pagina de listar caso
Quando eu aciono a opção Excluir Caso Miner 
Entao o sistema exibe a mensagem de exclusao "Automatizado_01 excluído com sucesso!"
