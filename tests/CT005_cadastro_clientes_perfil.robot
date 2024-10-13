*** Settings ***

Documentation        Realizar cadastro de clientes com sucesso na aba Perfil

Resource          ../resources/Base.resource

Test Setup        Página de Login
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 5: Realizar cadastro de clientes com sucesso na aba Perfil
    Set Test Message    message