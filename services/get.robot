*** Settings ***
Documentation        Requisições GET na API

Resource        Service.resource

*** Test Cases ***

CT001: Teste de resposta bem sucedida
    Listar clientes cadastrados

CT002: Teste de validação dos campos
    Validar campos retornados    

CT003: Teste de validação de endpoint
    Validar retorno de endpoint inexistente