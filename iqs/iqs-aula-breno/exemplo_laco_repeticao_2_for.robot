*** Settings ***


*** Variables ***
${QTD_LOUCAS_SUJAS}    ${5}


*** Tasks ***
Lavar loucas FOR:
    FOR    ${i}    IN RANGE     ${QTD_LOUCAS_SUJAS}
    Log To Console    Quantidade de loucas sujas: ${QTD_LOUCAS_SUJAS} - 1
    Log To Console    