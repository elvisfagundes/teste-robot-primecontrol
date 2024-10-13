*** Settings ***

Documentation        Recuperar senha de acesso

Resource          ../resources/Base.resource

Test Setup        Página de Login
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 11: Recuperar senha de acesso
        Dado que seja exibido um formulário para preencher informações de login
        Quando clico no link                                                       Esqueci minha senha
        E o redirecionamento ocorre                                                Recuperar Senha
        E preencho meu email confirmando a necessidade de recuperar a senha
        Então a mensagem de alerta é exibida                                       Email enviado com sucesso 