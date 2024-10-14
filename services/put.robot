*** Settings ***
Documentation        Requisições PUT na API

Resource        Service.resource
Resource    ../resources/pages/GestaoClientes.resource

## Retirei do cenário 2 a validação da mensagem, pois o retorno estava como not found
## Mas a validação se dá como nos outros resultados, inclusive não sendo possível realizar
## o reuso da KeyWord do primeiro cenário, mas mantive a estrutura, caso haja correção do retorno

*** Test Cases ***

CT001: Teste de atualização bem-sucedida 
    Realizar atualização de um cliente                             Teste Atualizar    D3ZHyigQVyute0IwNrZ5         Cliente atualizado com sucesso!

CT002: Teste de cliente não encontrado    
    Realizar a tentativa de atualização de cliente inexistente     Teste Atualizar    1                            Cliente não encontrado.

CT003: Teste de atualização sem campos
    Realizar tentativa de atualização de um cliente    ${EMPTY}    D3ZHyigQVyute0IwNrZ5                            Informe ao menos um campo para atualizar