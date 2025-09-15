*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${INPUT_FIRSTNAME}             id:firstName
${INPUT_LASTNAME}              id:lastName
${INPUT_USERMAIL}              id:userEmail
${INPUT_GENDER}                id:gender-radio-1
${INPUT_MOBILENUMBER}          id:userNumber
${INPUT_BIRTHDAY}              id:dateOfBirthInput
${INPUT_SUBJECTS}              id:subjectsInput
${INPUT_hobbies-checkbox-1}    id:hobbies-checkbox-1
${INPUT_UPLOAD}                id:uploadPicture
${TEXTAREA_ADDRESS}            id:currentAddress
${BUTTON_SUBMIT}               id:submit



*** Keywords ***
abrir o navegador e acessar o site
    Open Browser    https://demoqa.com/automation-practice-form    chrome
    Maximize Browser Window



preencher os campos
    Input Text    ${INPUT_FIRSTNAME}       THIAGO
    Sleep         2s
    Input Text    ${INPUT_LASTNAME}        DUARTE
    Sleep         2s
    Input Text    ${INPUT_USERMAIL}        TVLISBOA@EMAIL.COM
    Sleep         2s
    Input Text    ${INPUT_MOBILENUMBER}    24988811590
    Sleep         2s
    Input Text    ${INPUT_BIRTHDAY}        22/08/1993
    Sleep         2s
    Input Text    ${INPUT_SUBJECTS}        Vacation ready.
    Sleep         2s
    Input Text    ${TEXTAREA_ADDRESS}      Avenida Getulio Vargas - 1500



clicar em submit
    Click Element    ${BUTTON_SUBMIT}


fechar o navegador
    Sleep    5s
    Close Browser



*** Test Cases ***
Cenario 1: Preencher o formulario
    abrir o navegador e acessar o site
    preencher os campos
    clicar em submit
    fechar o navegador
    