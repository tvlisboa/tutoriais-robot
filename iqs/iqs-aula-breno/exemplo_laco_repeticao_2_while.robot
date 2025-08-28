*** Settings ***


*** Variables ***
${QT_LOUCAS_SUJAS}    ${5}


*** Tasks ***
Lavar loucas 01:
    WHILE    ${QT_LOUCAS_SUJAS} > 0
        Log To Console    \nLoucas sujas restantes: ${QT_LOUCAS_SUJAS}
        ${QT_LOUCAS_SUJAS}    Evaluate    ${QT_LOUCAS_SUJAS} - 1
        Log To Console    \nTodas as loucas lavadas
    END