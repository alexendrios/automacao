#language: pt

## Esta funcionalidade será executadasomente após a criação de umaa nova guia de transito ##

@consultar_guia_transito
Funcionalidade: Consultar e detalhar guia de transito 
   
#     @consultar_detalhar_guia_transito
#     Cenario: Consultar guia de transito
#         Quando solicitar a consulta de guia de transito
#         E preencher os parametros para consulta de guia de transito
#         Entao deve-se visualizar o resultado da consulta da guia
#     @consultar_guia_campo_obrigatorio
#     Cenario: Consultar guia de transito - Campo de consulta obrigatório
#         Quando solicitar a consulta de guia de transito
#         E não preencher os parametros para consulta de guia de transito
#         Entao deve-se visualizar a mensagem de campo obrigatório
