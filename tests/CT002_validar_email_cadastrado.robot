*** Settings ***

Documentation        Validar criação de uma conta com Email já cadastrado

Resource          ../resources/Base.resource

Test Setup        Página principal  
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 2: Validar criação de uma conta com Email já cadastrado
    ${account}    Get Fake Account
 
    Dado que valido a exibição do titulo principal da Home page      Uma plataforma de desafio técnico para testes automatizados.
    Quando clico sobre o botão Criar Conta
    E o redirecionamento ocorre                                      Criar Conta
    E preencho o campo Email com um email existente                  ${account}
    Então o alerta é exibido                                         Esse email já está em uso por outra conta
                                          