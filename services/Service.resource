*** Settings ***
Documentation        Camada de integração com a API

Library        RequestsLibrary
Library        JSONLibrary 
Library        ../resources/libs/Account.py

Variables      Env.py

*** Keywords ***

Listar clientes cadastrados
    GET         ${API_URL}/${LIST_CLIENTS}    expected_status=200
    

Validar campos retornados    
    ${reponse}    GET     ${API_URL}/${LIST_CLIENTS}

    ${json_compare}    Load Json From File    ../json_compare.json

    ${id}              Get Value From Json                   ${json_compare}    $.id
    ${nome}            Get Value From Json                   ${json_compare}    $.nome
    ${email}           Get Value From Json                   ${json_compare}    $.email
    ${fone }           Get Value From Json                   ${json_compare}    $.fone
    ${fotoPerfil}      Get Value From Json                   ${json_compare}    $.fotoPerfil
    

    Should Match       ${reponse.json()[0]["id"]}            ${id}    
    Should Match       ${reponse.json()[0]["nome"]}          ${nome}    
    Should Match       ${reponse.json()[0]["email"]}         ${email}    
    Should Match       ${reponse.json()[0]["fone"]}          ${fone}    
    Should Match       ${reponse.json()[0]["fotoPerfil"]}    ${fotoPerfil}    

Validar retorno de endpoint inexistente
    GET         ${API_URL}/inexistente    expected_status=404

Realizar cadastro de clientes
    [Arguments]    ${account}

    ${body}    Create Dictionary    
    ...    nome=${account}[name]
    ...    email=${account}[email]
    ...    fone=${account}[telefone]
    ...    fotoPerfil=${account}[urlFoto]
    ...    cep=${account}[CEP]
    ...    endereco=${account}[endereco]
    ...    complemento=${account}[complemento]
    ...    pais=${account}[pais]
    ...    genero=${account}[genero]
    ...    ferramentas=${account}[ferramentas]

    ${resp}    POST    ${API_URL}/${ADD_CLIENT}    json=${body}

    Should Be Equal        ${resp.json()["message"]}    Cliente cadastrado com sucesso!
    Should Not Be Empty    ${resp.json()["id"]}         

Validar campos obrigatórios
    [Arguments]    ${output_message}
    
    ${resp}        POST        ${API_URL}/${ADD_CLIENT}        expected_status=400

    Should Be Equal    ${resp.json()["message"]}    ${output_message}

Validar campo email e URL    
    [Arguments]    ${name}    ${email}    ${telefone}    ${output_message}

    ${body}    Create Dictionary    
    ...    nome=${name}
    ...    email=${email}
    ...    fone=${telefone}
    
    ${resp}        POST        ${API_URL}/${ADD_CLIENT}        json=${bodY}    expected_status=400

    Should Be Equal    ${resp.json()["message"]}    ${output_message}

Deletar cliente existente
    [Arguments]    ${id}    ${output_message}
    
    ${resp}    DELETE    ${API_URL}/${DELETE_CLIENT}/${id} 

    Should Be Equal    ${resp.json()["message"]}    ${output_message}

Validar delete de usuário inexistente
    [Arguments]     ${output_message}
    
    ${resp}    DELETE    ${API_URL}/${DELETE_CLIENT}/1             expected_status=404

    Should Be Equal    ${resp.json()["message"]}    ${output_message}

Validar o endpoint de delete sem ID

      ${resp}    DELETE    ${API_URL}/${DELETE_CLIENT}/${EMPTY}     expected_status=404

Realizar atualização de um cliente
    [Arguments]    ${name}    ${id}    ${output_message}

    ${body}    Create Dictionary    
    ...    nome=${name}
    
    ${resp}    PUT    ${API_URL}/${UPDATE_CLIENT}/${id}    json=${body}

    Should Be Equal    ${resp.json()["message"]}    ${output_message}

Realizar a tentativa de atualização de cliente inexistente
    [Arguments]    ${name}    ${id}    ${output_message}

    ${body}    Create Dictionary    
    ...    nome=${name}
    
    ${resp}    PUT    ${API_URL}/${UPDATE_CLIENT}/${id}    json=${body}    expected_status=500

Realizar tentativa de atualização de um cliente
    [Arguments]    ${name}    ${id}    ${output_message}

    ${body}    Create Dictionary    
    ...    nome=${name}
    
    ${resp}    PUT    ${API_URL}/${UPDATE_CLIENT}/${id}    json=${body}    expected_status=400

    Should Be Equal    ${resp.json()["message"]}    ${output_message}
