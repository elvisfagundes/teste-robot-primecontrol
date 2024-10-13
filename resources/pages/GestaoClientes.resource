*** Settings ***
Documentation        Ações e elementos da página de Gestão de Cientes

Library        Browser

*** Keywords ***
Então sou redirecionado para a página de Gestão de Clintes
    [Arguments]        ${titulo}

    ${element}    Set Variable   text=${titulo}

    Wait For Elements State
    ...    ${element}
    ...    visible    5
    
    Get Text    ${element}
    ...    equal
    ...    ${titulo}
