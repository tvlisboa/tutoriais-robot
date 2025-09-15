*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${VARIAVEL1}    NOME
${VARIAVEL2}    IDADE
${VARIAVEL3}    EMAIL
${VARIAVEL4}    ENDERECO
${VARIAVEL5}    TELEFONE

*** Keywords ***
abrir site da nike
    Open Browser    https://www.nike.com/    chrome

fechar navegador
    Sleep    5s
    Close Browser


abrir site da globo
    Open Browser    https://www.globo.com/    chrome

*** Test Cases ***
Cenario 1: Teste para abrir o site da nike
    abrir site da nike
    fechar navegador

Cenario 2: Teste para abrir o site da globo
    abrir site da globo
    fechar navegador
