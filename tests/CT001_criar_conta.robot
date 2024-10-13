*** Settings ***

Documentation        Criar uma nova Conta com sucesso

Resource          ../resources/Base.resource

Test Setup        Página principal  
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 1: Criar uma nova conta
    ${account}    Get Fake Account
 
    Dado que valido a exibição do titulo principal da Home page      Uma plataforma de desafio técnico para testes automatizados.
    Quando clico sobre o botão Criar Conta
    E o redirecionamento ocorre                                      Criar Conta
    E preencho os campos com dados válidos e submeto a requisição    ${account}
    Então sou redirecionado a página de login                        Login
 