*** Settings ***


*** Variables ***
${NOME}    Thiago
${IDADE}    30
${ALTURA}    1.90
${PESO}    75
${ESTADO CIVIL}    ${FALSE}


*** Tasks ***
Exemplos variaiveis 02:
    Log To Console    \nNome: ${NOME} \nIDADE: ${IDADE} \nALTURA: ${ALTURA} \nPESO: ${PESO} \nCASADO: ${ESTADO CIVIL} 