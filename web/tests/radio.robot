*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${radio_group}          movies
${radio_id}             cap
${radio_value}          guardians

*** Test Cases ***
Selecionar por Id
    Go To                            ${url}/radios
    Select Radio Button              ${radio_group}    ${radio_id} 
    Radio Button Should Be Set To    ${radio_group}    ${radio_id}

Selecionar por Value
    Go To                            ${url}/radios
    Select Radio Button              ${radio_group}    ${radio_value} 
    Radio Button Should Be Set To    ${radio_group}    ${radio_value}

