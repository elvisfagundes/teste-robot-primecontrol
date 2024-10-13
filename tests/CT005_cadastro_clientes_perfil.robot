*** Settings ***

Documentation        Realizar cadastro de clientes com sucesso na aba Perfil

Resource          ../resources/Base.resource

Test Setup        Página de Login
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 5: Realizar Login com sucesso
 
    Dado realizo      Uma plataforma de desafio técnico para testes automatizados.
    Quando clico sobre o botão Fazer Login
    E o redirecionamento ocorre                                      Login
    E preencho os campos com usuário existente realizando o login                       
    Então sou redirecionado para a página de Gestão de Clintes       Gestão de Clientes
                                            