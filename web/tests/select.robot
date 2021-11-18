*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${list}               class:avenger-list
${label_option}       Scott Lang
${value_option}       6

*** Test Cases ***
Selecionar por texto e validar por valor
    Go To                            ${url}/dropdown
    Select from List By Label        ${list}                     ${label_option}  
    ${selected}=                     Get Selected List Value     ${list}
    Should Be Equal                  ${selected}                 7

Selecionar por valor e validar por texto
    Go To                            ${url}/dropdown
    Select from List By Value        ${list}                     ${value_option}  
    ${selected}=                     Get Selected List Label     ${list}
    Should Be Equal                  ${selected}                 Loki
