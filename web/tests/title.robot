*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Conferir título da página
    Title Should Be     Training Wheels Protocol