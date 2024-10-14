*** Settings ***

Documentation        Realizar cadastro de clientes com sucesso na aba Perfil

Resource          ../resources/Base.resource

Test Setup        Página de Login
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 5: Realizar cadastro de clientes com sucesso na aba Perfil

    ${account}    Get Fake Account

    Dado que seja exibido um formulário para preencher informações de login
    E preencho o formulário com dados válidos realizando o login
    Quando clico no link                      	                                Cadastrar Cliente
    E preencho o formulário com todos os dados obrigatórios                     ${account}
    Então sou redirecionado para a página                                       Código 
 