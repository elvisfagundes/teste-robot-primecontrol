*** Settings ***
Documentation        Requisições POST na API

Resource        Service.resource

*** Test Cases ***

CT001: Validar cadastro do usuário
    ${account}    Get Fake Account

    Realizar cadastro de clientes        ${account}

CT002: Teste de campos obrigatórios
    Validar campos obrigatórios        Informe o nome 

CT003: Teste de validação do e-mail e URL do Perfil  
    [Template]    Validar campo email e URL

    Teste Teste    @                  41232141242    E-mail em formato inválido.
    Teste teste    teste@teste.com    41232141242    Informe a URL da foto