*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://www.saucedemo.com/v1/
${BROWSER}        CHROME
${USERNAME}       performance_glitch_user
${PASSWORD}       secret_sauce
${FIRST_NAME}     THIAGO
${LAST_NAME}      DUARTE
${POSTAL_CODE}    25651071

*** Keywords ***
Abrir o navegador
    Open Browser     url=${URL}            browser=${BROWSER} AND
    Maximize Browser Window

Fazer Login
    Input Text        id:user-name        ${USERNAME}
    Input Password    id:password         ${PASSWORD}
    Click Button      id:login-button
    Sleep             2s

Adicionar produtos
    Click Button      xpath://button[text()='ADD TO CART']
    Click Button      xpath:(//button[text()='ADD TO CART'])[2]
    Sleep             2s      

Ir para o carrinho
    Click Element     class:shopping_cart_link
    Sleep             2s

Preencher o checkout
    Click Element     xpath://a[text()='CHECKOUT']
    Input Text        id:first-name        ${FIRST_NAME}
    Input Text        id:last-name         ${LAST_NAME}
    Input Text        id:postal-code       ${POSTAL_CODE}
    Click Button      xpath://input[@value='CONTINUE']
    Sleep             2s

Finalizar compra
    Click Element      xpath://a[text()='FINISH']
    Sleep              2s


Validar a mensagem final
    Page Should Contain Element    class:complete-header
    Capture Page Screenshot     


Fechar navegador
    Close Browser
    


*** Test Cases ***
Realizar o checkout no SAUCEDEMO
    [Documentation]    Fazer login, adicionar itens no carrinho e fazer checkout.
    ...    Open Browser    url=${URL}    browser=${BROWSER}    AND
    ...    Maximize Browser Window

    Input Text      id:user-name    ${USERNAME}
    Input Text      id:password     ${PASSWORD}
    Click Button    id:login-button    
    Sleep    2s

    Click Button    xpath://button[text()='ADD TO CART']