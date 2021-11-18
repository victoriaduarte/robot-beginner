*** Settings ***
Library    app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}    Welcome    Vic
    Should Be Equal    ${result}    Olá Vic, bem vindo ao curso básico de Robot Framework!