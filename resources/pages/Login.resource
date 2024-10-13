*** Settings ***
Documentation        Ações e elementos da página Login

Library        Browser

*** Keywords ***

Dado que seja exibido um formulário para preencher informações de login

    ${email}       Set Variable    id=floatingInput

    Wait For Elements State
    ...    ${email}    
    ...    visible    5

E preencho o formulário com dados válidos realizando o login

    Fill Text    id=floatingInput          mateusmartins@example.org
    Fill Text    id=floatingPassword       Teste@123

    Click        css=.btn-lg
    Sleep        3

E preencho o campo com senha inválida 

    Fill Text    id=floatingInput          mateusmartins@example.org
    Fill Text    id=floatingPassword       Teste

    Click        css=.btn-lg
    Sleep        3

E clico sobre o link "Esqueci minha senha"
    Click    xpath=//a[text()="Esqueci minha senha"]
    