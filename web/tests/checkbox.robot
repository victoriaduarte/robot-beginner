*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${checkbox_thor}          id:thor
${checkbox_ironman}       css:input[value='iron-man']
${checkbox_panther}       xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcar opção com Id
    Go To                          ${url}/checkboxes
    Select Checkbox                ${checkbox_thor}  
    Checkbox Should Be Selected    ${checkbox_thor}  

Marcar opção com CSS Selector
    Go To                          ${url}/checkboxes
    Select Checkbox                ${checkbox_ironman}  
    Checkbox Should Be Selected    ${checkbox_ironman}  

Marcar opção com Xpath
    Go To                          ${url}/checkboxes
    Select Checkbox                ${checkbox_panther}
    Checkbox Should Be Selected    ${checkbox_panther}  
