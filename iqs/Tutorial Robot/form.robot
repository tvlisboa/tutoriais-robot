*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${INPUT_USERNAME}           //input[@placeholder="Full Name"]
${INPUT_USEREMAIL}          //input[@placeholder="name@example.com"]
${TEXTAREA_ADRESS}          //textarea[@placeholder="Current Address"]
${TEXTAREA_ENDERECOATUAL}   //textarea[@id="permanentAddress"]
${BUTTOM_SUBMIT}            //button[@class="btn btn-primary"]


*** Keywords ***
abrir o navegador e acessar o site
    Open Browser    https://demoqa.com/text-box    chrome    AND
    Maximize Browser Window

preencher os campos
    Input Text        ${INPUT_USERNAME}             THIAGO DUARTE
    Sleep             2s
    Input Text        ${INPUT_USEREMAIL}            TVLISBOA@EMAIL.COM
    Sleep             2s
    Input Text        ${TEXTAREA_ADRESS}            PETRÓPOLIS - RIO DE JANEIRO
    Sleep             2s
    Input Text        ${TEXTAREA_ENDERECOATUAL}     QUITANDINHA - PETRÓPOLIS
    Sleep             2s

clicar em submit
    Sleep             2s
    Click Button     ${BUTTOM_SUBMIT} 

fechar o navegador
    Close Browser



*** Test Cases ***
TC1: Preencher formulário
    abrir o navegador e acessar o site
    preencher os campos
    clicar em submit
    fechar o navegador