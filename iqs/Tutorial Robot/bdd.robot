*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#Dados do teste
${NOME_MUSICA}                        MC TUTO - 2025

#variaveis de configuracoes
${URL_MUSICA}                        https://www.youtube.com/
${BROWSER}                           CHROME

#elementos
${INPUT_PEQUISAR}                    //input[@class="ytSearchboxComponentInput yt-searchbox-input title"]
${BUTTON_PEQUISAR}                   //button[@class="ytSearchboxComponentSearchButton"]
${FIRST_VIDEO}                       (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${PROVA}                             //yt-formatted-string[@id="owner-sub-count"]


*** Keywords ***
Dado que eu acesse o site do youtube.
    Open Browser                              ${URL_MUSICA}    ${BROWSER}
    Maximize Browser Window

Quando digitar o nome da musica
    Input Text                                ${INPUT_PEQUISAR}    ${NOME_MUSICA}

E clicar no botao buscar
    Click Element                             ${BUTTON_PEQUISAR}

E clicar na primeira opcao da lista
    Wait Until Element Is Visible             ${FIRST_VIDEO}    15
    Click Element                             ${FIRST_VIDEO}

Entao o video é executado
    Wait Until Element Is Visible             ${PROVA}    15
    Element Should Be Visible                 ${PROVA}
    Sleep                                     60s
    Close Browser
    

*** Test Cases ***
TC01: Executar video no site do youtube.
    Dado que eu acesse o site do youtube.
    Quando digitar o nome da musica
    E clicar no botao buscar
    E clicar na primeira opcao da lista
    Entao o video é executado


