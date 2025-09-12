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



#declaracao dos testes
*** Test Cases ***
Cenario 1: Teste para abrir navegador no site da globo
    Open Browser    https://www.globo.com/    chrome
    Sleep    15s
    Close Browser

Cenario 2: Teste para abrir o navegador no site da g1
    Open Browser    https://g1.globo.com/    chrome
    Sleep    15s
    Close Browser