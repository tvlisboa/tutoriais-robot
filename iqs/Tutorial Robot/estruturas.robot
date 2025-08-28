*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NOME}    THIAGO
${IDADE}    30
${PESO}    75
${ALTURA}    1.75
${SEXO}    MASCULINO

*** Keywords ***
Abrir o navegador no site da g1
    Open Browser    https://g1.globo.com/     chrome

Fechar navegador
    Close Browser

Abrir o navegador no site do globo
    Open Browser    https://www.globo.com/     chrome

Abrir o navegador no perfil do usuario no instagram
    Open Browser    https://www.instagram.com/instagram/    chrome

Abrir o navegador no site da OLX
    Open Browser    https://rj.olx.com.br/rio-de-janeiro-e-regiao/hobbies-e-colecoes/ferrari-312t-12-1975-niki-lauda-quartzo-escala-1-43-1298075357?lis=listing_no_category    chrome

Abrir o navegador no site do ORKUT
    Open Browser    https://www.orkut.com/    chrome

    

*** Tasks ***
TESTE1: Abrir navegador no site
    [Tags]        regressivo
    Abrir o navegador no site da g1
    Fechar navegador


TESTE2: Abrir o site do globo
    Abrir o navegador no site do globo
    Fechar navegador

Teste3: Abrir o site do instagram 
    Abrir o navegador no perfil do usuario no instagram
    Fechar navegador

Teste4: Abrir o site da OLX
    Abrir o navegador no site da OLX
    Fechar navegador

Teste5: Abrir o site do ORKUT
    Abrir o navegador no site do ORKUT
    Fechar navegador
