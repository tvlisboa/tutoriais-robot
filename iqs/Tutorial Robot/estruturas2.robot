*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${VARIAVEL1}    NOME
${VARIAVEL2}    IDADE
${VARIAVEL3}    SEXO
${VARIAVEL4}    ALTURA
${VARIAVEL5}    PESO


*** Keywords ***
abrir o site do google
    Open Browser    https://google.com/    chrome
    
fechar o navegador
    Close Browser

abrir o site da globo
    Open Browser    https://g1.globo.com/    chrome

abrir o site do youtube
    Open Browser    https://youtube.com/    chrome
    
abrir a pagina do instagram
    Open Browser    https://instagram.com/    chrome

abrir a pagina do Whatspp
    Open Browser    https://whatsapp.com/    chrome
    

*** Test Cases ***
TC1: Teste para abir o site do google
    abrir o site do google
    fechar o navegador

TC2: Teste para abrir o navegador no site da globo
    abrir o site da globo
    fechar o navegador

TC3: Teste para abrir o navegador no site do youtube
    abrir o site do youtube
    fechar o navegador

TC4: Teste para abir o navegador no site do instagram
    abrir a pagina do instagram
    fechar o navegador

TC5: Teste para abrir o navegador no site do Whatsapp
    abrir a pagina do Whatspp
    fechar o navegador



    