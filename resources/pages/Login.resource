*** Settings ***
Documentation        Ações e elementos da página Login

Library        Browser

*** Keywords ***
Então sou redirecionado a página de login
    [Arguments]        ${title}

    ${element}    Set Variable    css=.form-signin h1

    Wait For Elements State
    ...    ${element}
    ...    visible    5

    Get Text    ${element}  
    ...    equal
    ...    ${title}


E preencho os campos com usuário existente realizando o login

    Fill Text    id=floatingInput          mateusmartins@example.org
    Fill Text    id=floatingPassword       Teste@123

    Click        css=.btn-lg
    Sleep        3

E preencho o campo com senha inválida 

    Fill Text    id=floatingInput          mateusmartins@example.org
    Fill Text    id=floatingPassword       Teste

    Click        css=.btn-lg
    Sleep        3

