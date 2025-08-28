*** Settings ***

*** Variables ***
${NUM}    ${0}


*** Tasks ***
Exemplo lacos de repeticao FOR:
    FOR    ${i}    IN RANGE    100
        ${NUM}    Evaluate    ${NUM} + 10
        Log To Console    ${NUM}
    END
    