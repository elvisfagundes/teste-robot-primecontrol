*** Settings ***

Documentation        Validar preenchimento "Informações do candidado" ao clicar em "Finalizar e Enviar"

Resource          ../resources/Base.resource

Test Setup        Dado que o usuário está logado
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 12: Validar preenchimento "Informações do Candidato"
        ${account}    Get Fake Account

        Quando clico no link                                                       Finalizar
        E clico no botão enviar no modal
        E visualizo o modal Informações do cadidato finalizando o preenchimento    ${account}
        Então a mensagem de alerta é exibida                                       As informações foram registradas com sucesso!
