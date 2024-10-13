*** Settings ***

Documentation        Editar Cliente através do botão na listagem de clientes

Resource          ../resources/Base.resource

Test Setup        Página de Login
Test Teardown     Take Screenshot

*** Test Cases ***

Cenário 7: Editar Cliente através do botão na listagem de clientes

    Dado que seja exibido um formulário para preencher informações de login
    E preencho o formulário com dados válidos realizando o login
    Quando clico no icone de edição
    E realizo a edição de um campo salvando os novos dados                        
    Então sou redirecionado para a página                                        Gestão de Clientes
    