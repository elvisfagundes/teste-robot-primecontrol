*** Settings ***
Documentation        Requisições DELETE na API

Resource        Service.resource

*** Test Cases ***
CT001: Teste de exlusão bem-sucedida
    Deletar cliente existente                   ARJodgEYt9VJla2559eR        Cliente excluído com sucesso!

CT002: Teste de cliente não encontrado
    Validar delete de usuário inexistente       Cliente não encontrado.

CT003: Teste de exclusão sem id
    Validar o endpoint de delete sem ID