*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${INPUT_FIRST_NAME}        //input[@placeholder = "firstName"]
${INPUT_LAST_NAME}         //input[@placeholder = "lastName"]
${INPUT_USEREMAIL}         //input[@placeholder = "name@example.com"]
${INPUT_USERNUMBER}        //input[@placeholder = "MobileNumber"]
${INPUT_DATEBIRTH}         //input[@form-control = "dateOfBirthInput"]
${INPUT_SUBMIT}            //button[@submit = "btn btn-primary"]

*** Keywords ***
abrir o navegador e acessar o site
    Open Browser    https://demoqa.com/automation-practice-form    chrome


preencher os campos
    Input Text      ${INPUT_FIRST_NAME}    Thiago
    Sleep           time_=1s
    Input Text      ${INPUT_LAST_NAME}     Lisboa
    Sleep           time_=1s
    Input Text      ${INPUT_USEREMAIL}     exemple@email.com
    Sleep           time_=1s
    Input Text      ${INPUT_USERNUMBER}    24988888901
    Sleep           time_=1s
    Input Text      ${INPUT_DATEBIRTH}     22/08/1993
    Sleep           time_=1s
        

enviar
    Click Button    ${INPUT_SUBMIT}

fechar o navegador
    Close Browser

*** Test Cases ***
TC1: Preencher o formulario
    abrir o navegador e acessar o site
    preencher os campos
    enviar
    fechar o navegador
    