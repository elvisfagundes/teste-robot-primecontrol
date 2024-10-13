*** Settings ***

Documentation        Criar uma nova Conta com sucesso

Resource          ../resources/Base.resource

Test Setup        Página principal  
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 1: Criar uma nova conta
    ${account}    Get Fake Account
 
    Dado que valido a exibição do titulo principal da Home page                    Uma plataforma de desafio técnico para testes automatizados.
    Quando clico sobre o botão Criar Conta
    E o redirecionamento ocorre                                                    Criar Conta
    E preencho o formulário de login com dados válidos submentendo o formulário    ${account}
    Então sou redirecionado para a página                                          Login
  