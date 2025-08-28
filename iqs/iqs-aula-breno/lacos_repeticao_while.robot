*** Settings ***

*** Variables ***
${NUMBER}    #{0}

*** Tasks ***
Exemplo lacos de repeticoes WHILE:
    WHILE    ${NUMBER} < ${100}
        ${NUMBER}    Evaluate    ${NUMBER} + 1
        Log To Console    \n${NUMBER}
        END