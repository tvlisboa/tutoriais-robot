*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Variables ***
${INPUT_NAME}          id:firstname
${INPUT_LASTNAME}      id:lastname
${INPUT_ID}            id:sex-0
${INPUT_EXP}           id:exp-6
${INPUT_DATE}          id:datepicker
${INPUT_PROFESSION}    id:profession-1
${INPUT_TOLL}          id:tool-2
${SELECT_AREA}         id:continents

*** Keywords ***
Abrir o navegador
    Open Browser    https://www.techlistic.com/p/selenium-practice-form.html    chrome 
    Maximize Browser Window

Preencher os campos
    Input Text    ${INPUT_NAME}         Tester1
    Input Text    ${INPUT_LASTNAME}     Automation   


Clicar em submit

Fechar o navegador
    Close Browser



*** Test Cases ***
Cenario 1: Preencher o formulario.
    Abrir o navegador e acessar o site
    Preencher os campos
    Clicar em submit
    Fechar o navegador
    