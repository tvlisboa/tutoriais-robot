*** Settings ***

*** Variables ***
${SALDO}    ${1000}
${VALOR_SAQUE}    ${1100}

*** Tasks ***
Exemplo estruturas condicionais01:
    IF    ${VALOR_SAQUE} <= ${SALDO}
        ${SALDO}    Evaluate    ${SALDO} - ${VALOR_SAQUE}
        Log To Console   \nSAQUE EFETUADO COM SUCESSO NO VALOR R$${VALOR_SAQUE}! \nNOVO SALDO: R$${SALDO}
    ELSE
        Log To Console    \nSALDO INSUFICIENTE PARA OPERAÇÃO! \nSALDO ATUAL R$${SALDO}
    END
    