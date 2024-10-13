*** Settings ***

Documentation        Relizar logout com sucesso ao clicar em "Finalizar"

Resource          ../resources/Base.resource

Test Setup        Dado que o usuário está logado
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 10: Relizar logout com sucesso ao clicar em "Finalizar"
        Quando realizo o logout
        Então sou redirecionado para a página    Login 