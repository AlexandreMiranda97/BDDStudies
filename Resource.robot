*** Settings ***
Library    SeleniumLibrary
Resource   Page.robot 

*** Variables ***

*** Keywords ***
Abrir Navegador
    Open Browser    None    chrome

Fechar Navegador
    Close Browser

Seleciona departamento
    [Arguments]    ${departamento}
    Wait Until Element Is Visible       ${selectDepartamento}
    Select From List By Label           ${selectDepartamento}        ${departamento}

Pesquisa produto
    [Arguments]    ${produto}
    Wait Until Element Is Visible       ${campoPesquisa}
    Input Text                          ${campoPesquisa}        ${produto}    

a página deve conter o produto pesquisado
    [Arguments]    ${produto}
    Page Should Contain                 ${produto}    
