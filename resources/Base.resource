*** Settings ***
Documentation        Arquivo principal do projeto Robot

Library    Browser
Library    libs/Account.py

Resource    pages/Home.resource
Resource    pages/NovaConta.resource
Resource    pages/Login.resource
Resource    pages/GestaoClientes.resource

*** Keywords ***

Página principal

    New Browser    browser=chromium    headless=False
    New Page    https://challenge.primecontrol.com.br/

Página de Login
    New Browser    browser=chromium    headless=False
    New Page    https://challenge.primecontrol.com.br/app

Então o alerta é exibido    
    [Arguments]        ${alert}

    ${element}    Set Variable    css=.alert

    Wait For Elements State
    ...    ${element}
    ...    visible    5
    
    Get Text    ${element}  
    ...    equal
    ...    ${alert}