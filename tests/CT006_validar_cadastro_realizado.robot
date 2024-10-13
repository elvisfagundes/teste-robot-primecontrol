*** Settings ***

Documentation        Validar Pesquisa de Cliente recém cadastrado e exibição dos dados em tela

Resource          ../resources/Base.resource

Test Setup        Página de Login
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 6: Validar Pesquisa de Cliente recém cadastrado e exibição dos dados em tela

    Dado que seja exibido um formulário para preencher informações de login
    E preencho o formulário com dados válidos realizando o login
    Quando realizo a busca por um perfil recém criado
    Então um modal é exibido com os dados do cliente
  