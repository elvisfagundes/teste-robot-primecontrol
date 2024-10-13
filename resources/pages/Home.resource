*** Settings ***

Documentation        Ações e elementos da Landing page 

Library    Browser

*** Keywords ***

Dado que valido a exibição do titulo principal da Home page
    [Arguments]        ${title}

    ${element}    Set Variable    id=banner >> h1

    Get Text    
    ...    ${element}  
    ...    equal
    ...    ${title}

Quando clico sobre o botão Criar Conta

    ${element}    Set Variable    css=.btn-dark

    Click    ${element}

Quando clico sobre o botão Fazer Login

    ${element}    Set Variable    css=.btn-outline-light

    Click    ${element}

