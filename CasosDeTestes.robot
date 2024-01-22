*** Settings ***
Resource    BDDpt-br.robot
Resource    Resource.robot
Resource    Page.robot
Resource    Resource.robot

Suite Setup       Abrir Navegador
Suite Teardown    Fechar Navegador

*** Variables ***

${url}    =    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Cenário 01: Realizar login com sucesso
    Dado que esteja na tela principal do site
    Quando inserir os dados de login
    E clicar no botão de login
    Então a página deve realizar login com sucesso

*** Keywords ***
que esteja na tela principal do site
    [Arguments]    ${url}
    Open Browser                        ${url}                chrome
    Page Should Contain                 ${loginCenterDiv}

inserir os dados de login
    Input Text                          ${username}           Admin
    Sleep                               1
    Input Password                      ${password}           admin123

clicar no botão de login
    Click Button                        ${btnSubmit}

a página deve realizar login com sucesso
    Page Should Contain                 text

    

