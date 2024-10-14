*** Settings ***
Documentation        Ações e elementos da página de Gestão de Cientes

Library        Browser

*** Keywords *** 
E preencho o formulário com todos os dados obrigatórios
    [Arguments]        ${account}   

    Fill Text    css=.col-md-9 > input                                                        ${account}[name]
    Fill Text    xpath=//label[text()="Telefone:"]/following-sibling::input                   ${account}[telefone]
    Fill Text    xpath=//label[text()="E-mail:"]/following-sibling::input                     ${account}[email]
    Fill Text    xpath=//label[text()="CEP:"]/following-sibling::input                        ${account}[CEP]
    Fill Text    xpath=//label[text()="Endereço:"]/following-sibling::input                   ${account}[endereco]
    Fill Text    xpath=//label[text()="Número da residência:"]/following-sibling::input       ${account}[numeroResidencia]
    Fill Text    xpath=//label[text()="Complemento:"]/following-sibling::input                ${account}[complemento]

    Select Options By    xpath=//select       value        br  

    Upload File By Selector    css=.image-upload-label    image.png
    
    Click    //label[text()="Masculino"]//preceding-sibling::input
    Click    //label[text()="Robot Framework"]//preceding-sibling::input
    Click    //label[text()="Selenium WebDriver"]//preceding-sibling::input
    Click    //label[text()="Cypress"]//preceding-sibling::input
    Click    .salvar

Quando realizo a busca por um perfil recém criado

    Fill Text    css=.inputSearch    Caleb Almeida
    Sleep    1
    Click        .btn-primary    

Então um modal é exibido com os dados do cliente
    ${element}    Set Variable    css=.titleModal    

    Wait For Elements State  
    ...    ${element}
    ...    visible    5

    Get Text    ${element}
    ...    equal
    ...    Dados do Cliente

Quando clico no icone de edição
    Click    //td[text()="Caleb Almeida"]/..//a[1]

E realizo a edição de um campo salvando os novos dados
    
    Click    .btn-danger

    Upload File By Selector    xpath=//input[@id="formFile"]    image.png
    
    Sleep    2

    Click    //button[text()="Salvar"]

Então um popup deve ser exibido  
    Handle Future Dialogs    action=accept
    
E realizo a tentativa de Cadastro
    [Arguments]    ${name}    ${telefone}    ${email}    ${CEP}    ${endereco}    ${numeroResidencia}    ${complemento}

    ${account}    Create Dictionary
    ...    name=${name}
    ...    email=${email}
    ...    telefone=${telefone}
    ...    CEP=${CEP}
    ...    numero_residencia=${numeroResidencia}
    ...    endereco=${endereco}
    ...    complemento=${complemento}
      
        Select Options By    xpath=//select       value        br 
       
        Upload File By Selector    css=.image-upload-label    image.png

        E preencho o formulário com todos os dados obrigatórios    ${account}
        Então um popup deve ser exibido
        Sleep    2
        Take Screenshot

Quando realizo o logout
    Click    css=.logout
    
    Wait For Elements State    
    ...    css=.modal-finalizar
    ...    visible    

    Click    css=.btn-danger-modal

E clico no botão enviar no modal
    Click    css=.btn-primary-modal

E visualizo o modal Informações do cadidato finalizando o preenchimento
    [Arguments]    ${account}    

     Wait For Elements State    
    ...    css=.modal-finalizar
    ...    visible    
    
    Fill Text    id=nome              ${account}[name]
    Fill Text    id=telefone          ${account}[telefone]
    Fill Text    id=githubLink        ${account}[github]
    Fill Text    id=nomeRecrutador    ${account}[name]
    
    Click        css=.btn-primary-modal