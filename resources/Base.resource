*** Settings ***
Documentation        Arquivo principal do projeto Robot

Library      Browser
Library      libs/Account.py

Variables    Env.py     

Resource     pages/Home.resource
Resource     pages/NovaConta.resource
Resource     pages/Login.resource
Resource     pages/GestaoClientes.resource
Resource     pages/ResetSenha.resource

*** Keywords ***

Página principal

    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Page       ${BASE_URL}

Página de Login
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Page       ${BASE_URL}/app

Dado que o usuário está logado
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Page       ${BASE_URL}/app
    Dado que seja exibido um formulário para preencher informações de login
    E preencho o formulário com dados válidos realizando o login
    Quando clico no link                    	                                Cadastrar Cliente

Então a mensagem de alerta é exibida     
    [Arguments]        ${alert}

    ${element}    Set Variable    css=.alert

    Wait For Elements State
    ...    ${element}
    ...    visible    5
    
    Get Text    ${element}  
    ...    equal
    ...    ${alert}

Quando clico no link

    [Arguments]        ${titulo}

    ${element}    Set Variable   xpath=//a[text()="${titulo}"]

    Wait For Elements State
    ...    ${element}
    ...    visible    5
    
    Click    ${element}
    
Então sou redirecionado para a página 
    [Arguments]        ${titulo}

    ${element}    Set Variable   text=${titulo}

    Wait For Elements State
    ...    ${element}
    ...    visible 
    
    Get Text    ${element}
    ...    equal
    ...    ${titulo}