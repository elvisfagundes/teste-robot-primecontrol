*** Settings ***

Documentation        Validar Login com senha inválida

Resource          ../resources/Base.resource

Test Setup        Página principal  
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 4: Validar Login com senha inválida

    Dado que valido a exibição do titulo principal da Home page      Uma plataforma de desafio técnico para testes automatizados.
    Quando clico sobre o botão Fazer Login
    E o redirecionamento ocorre                                      Login
    E preencho o campo com senha inválida                       
    Então o alerta é exibido                                         E-mail ou senha inválida.
                                             