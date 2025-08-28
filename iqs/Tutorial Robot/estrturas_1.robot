#ordenacao em boas praticas
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${VARIAVEL1}        PETROPOLIS
${VARIAVEL2}        RIO DE JANEIRO
${VARIAVEL3}        BRASIL


*** Keywords ***
Abrir o site readme
    Open Browser    https://readme.so/pt/editor    chrome
    Sleep           2s

Fechar navegador
    Close All Browsers

Abrir o site da globo
    Open Browser     https://g1.globo.com/    chrome
    Sleep            2s

Abrir o site da nike
    Open Browser    https://www.nike.com.br/    chrome
    Sleep           5s

*** Test Cases ***
#cenario de teste
TC1: Teste para abir o site readme
    Abrir o site readme


TC2: Teste para abrir o site da globo
    Abrir o site da globo

TC3: Teste para abrir o site da nike
    Abrir o site da nike
    Fechar navegador

