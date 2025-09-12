#importar recursos
*** Settings ***
Library    SeleniumLibrary

#declaracao de variaveis
*** Variables ***
${VARIAVEL1}    TESTE1
${VARIAVEL2}    Introducao ao robot
${VARIAVEL3}    TESTE2
${VARIAVEL4}    IQS - SERRATEC 2025
${VARIAVEL5}    TESTE3

#criacao de keywords personalizadas ou padronizados pelo selenium
*** Keywords ***
abrir site da globo
    Open Browser    https://www.globo.com/    chrome
    Maximize Browser Window


fechar navegador
    Sleep    5s
    Close Browser


abrir site do g1
    Open Browser    https://g1.globo.com/    chrome
    Maximize Browser Window

#declaracao dos testes
*** Test Cases ***
Cenario 1: Teste para abrir site da globo
    abrir site da globo
    fechar navegador

Cenario 2: Teste para abrir site da g1
    abrir site do g1
    fechar navegador
    
    