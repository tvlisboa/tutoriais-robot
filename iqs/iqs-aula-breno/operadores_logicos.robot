*** Settings ***


*** Variables ***
${USERNAME}    THIAGO
${PASSWORD}    calabresa123

*** Tasks ***
Fazer Login
    IF    "${USERNAME}" == "THIAGO" and "${PASSWORD}" == "calabresa123"
        Log To Console    \nBEM-VINDO: ${USERNAME}
    ELSE
        Log To Console    \nACESSO NEGADO!
    END
    