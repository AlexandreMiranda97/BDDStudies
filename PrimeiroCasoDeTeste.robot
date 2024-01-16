*** Settings ***
Resource    BDDpt-br.robot

*** Test Cases ***
Cenário 01: Pesquisar postagem Season Premiere
    Dado que esteja na tela HOME do blog robotizando testes
    Quando pesquisar pela palavra "introdução"
    Então a postagem "Season Premiere: Introdução ao Robot Framework" deve ser listada no resultado da pesquisa

