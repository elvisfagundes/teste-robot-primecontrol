*** Settings ***

Documentation        Realizar Login com sucesso

Resource          ../resources/Base.resource

Test Setup        Página principal  
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 3: Realizar Login com sucesso
 
    Dado que valido a exibição do titulo principal da Home page      Uma plataforma de desafio técnico para testes automatizados.
    Quando clico sobre o botão Fazer Login
    E o redirecionamento ocorre                                      Login
    E preencho os campos com usuário existente realizando o login                       
    Então sou redirecionado para a página de Gestão de Clintes       Gestão de Clientes
                                            