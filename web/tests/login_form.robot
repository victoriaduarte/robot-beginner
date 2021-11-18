*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${name_field}             css:input[name=username]
${password_field}         css:input[name=password]
${login_button}           class:btn-login
${alert}                  id:flash

*** Test Cases ***
Login com sucesso
    Go To            ${url}/login
    Login with       stark                  jarvis!

    Should see logged user                  Tony Stark

Senha inválida
    [tags]           login_error
    Go To            ${url}/login
    Login with       stark                  acb123

    Should contain login alert              Senha é invalida!

Usuário não existe
    [tags]           login_error404
    Go To            ${url}/login
    Login with       papito                 123456

    Should contain login alert              O usuário informado não está cadastrado

*** Keywords ***
Login with 
    [Arguments]      ${name}      ${password}

    Input Text       ${name_field}          ${name}    
    Input Text       ${password_field}      ${password}  
    Click Element    ${login_button} 

Should contain login alert
    [Arguments]      ${expected_message}

    ${message}=      Get WebElement         ${alert} 
    Should Contain   ${message.text}        ${expected_message}

Should see logged user
    [Arguments]      ${full_name}

    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!
