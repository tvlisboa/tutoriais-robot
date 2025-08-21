*** Settings ***

*** Variables ***
${GREETING}    Seja bem-vindo!
${USERNAME}    Thiago
${AGE}    30
${CURSO}    FORMAÇÃO - IQS E TESTES AUTOATIZADOS
${CITY}    PETRÓPOLIS
${DATE}    AGOSTO - 2025

*** Tasks ***
Greet user
    Log To Console    \nBom dia ${USERNAME}! \n${AGE} \n${GREETING} \n${CURSO} \n${CITY} \n${DATE}