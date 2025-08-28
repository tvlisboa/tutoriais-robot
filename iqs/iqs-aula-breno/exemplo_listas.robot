*** Settings ***


*** Variables ***
@{LISTA_VEICULOS}    carro    moto    aviao    navio

*** Tasks ***
Exemplo Lista 01:
    Log To Console    O item na Posicao 04    ${LISTA_VEICULOS}[3]
    FOR    ${veiculo}    IN    @{LISTA_VEICULOS}
    Log To Console    Veiculo: ${veiculo} 
    END
    