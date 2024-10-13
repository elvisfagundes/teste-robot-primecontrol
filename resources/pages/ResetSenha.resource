*** Settings ***
Documentation        Ações e elementos da página de Recuperar senha

Library        Browser

*** Keywords ***
E preencho meu email confirmando a necessidade de recuperar a senha
    Fill Text    id=floatingInput    mateusmartins@example.org
    Click        css=.btn-lg