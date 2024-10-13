*** Settings ***

Documentation        Validar Cadastro de Clientes com Email inválido na aba Perfil

Resource          ../resources/Base.resource

Test Setup        Dado que o usuário está logado
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 8: Validar Cadastro de Clientes com Email inválido na aba Perfil
    [Template]        E realizo a tentativa de Cadastro 
    
    Teste Teste    5541999142349    teste.teste.com.br    81110-070    Rua Francisco Raitani    6120    Casa
 