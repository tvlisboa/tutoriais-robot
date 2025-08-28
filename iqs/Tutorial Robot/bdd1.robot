*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#Dados do teste
${NOME_MUSICA}               Billie Eilish - BIRDS OF A FEATHER 


#Variaveis de configuracao
${URL}                       https://www.youtube.com/
${BROWSER}                   CHROME

#Elementos
${INPUT_PEQUISAR}            //input[@class="ytSearchboxComponentInput yt-searchbox-input title"]
${BUTTON_PESQUISAR}          //button[@class="ytSearchboxComponentSearchButton"]
${FIRST_VIDEO}               (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${PROVA}                     //yt-formatted-string[@id="owner-sub-count"]



*** Keywords ***
Dado que o usuario acesse o site do youtube
    Open Browser                 ${URL}                   ${BROWSER}
    Maximize Browser Window

Quando digitar em pequisar
    Input Text                   ${INPUT_PEQUISAR}        ${NOME_MUSICA}

E clicar no botao pequisar
    Click Element                ${BUTTON_PESQUISAR}

E clicar na primeira opcao da lista
    Wait Until Element Is Visible    ${FIRST_VIDEO}        15
    Click Element                    ${FIRST_VIDEO}

Entao o video é executado
    Wait Until Element Is Visible    ${PROVA}              15
    Element Should Be Visible        ${PROVA}
    Sleep    30S
    Close Browser



*** Test Cases ***
TC1: Executar o video no youtube.
    [Tags]        regressivo
    Dado que o usuario acesse o site do youtube
    Quando digitar em pequisar
    E clicar no botao pequisar
    E clicar na primeira opcao da lista
    Entao o video é executado
    