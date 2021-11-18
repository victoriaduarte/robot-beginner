*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${list}               class:avenger-list
${table}         id:actors
${row}           2
${value_1}       @vindiesel
${value_2}       xpath:.//tr[contains(., '@chadwickboseman')]

*** Test Cases ***
Verificar o valor ao informar o número da linha
    Go To                            ${url}/tables
    Table Row Should Contain         ${table}        ${row}      ${value_1} 

Identifica a linha pelo texto chave e valida os demais valores
    Go To               ${url}/tables
    ${target}=          Get WebElement      ${value_2}
    Log                 ${target.text}      
    Should Contain      ${target.text}      $ 700.000
    Should Contain      ${target.text}      Pantera Negra

    