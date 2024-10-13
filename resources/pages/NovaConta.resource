*** Settings ***

Documentation        Ações e elementos da página de Nova Conta

Library    Browser

*** Keywords ***
E o redirecionamento ocorre 
    [Arguments]        ${title}

    ${element}    Set Variable    css=.form-signin h1

    Get Text    
    ...    ${element}  
    ...    equal
    ...    ${title}

E preencho os campos com dados válidos e submeto a requisição
    [Arguments]        ${account}   

    Fill Text    id=floatingInput          ${account}[email]
    Fill Text    id=floatingPassword       ${account}[password]

    Click        css=.btn-lg
    Sleep        3

E preencho o campo Email com um email existente
    [Arguments]        ${account}   

    Fill Text    id=floatingInput          ipires@example.org
    Fill Text    id=floatingPassword       ${account}[password]

    Click        css=.btn-lg
    Sleep        3
   
