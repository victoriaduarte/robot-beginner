*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}                    https://training-wheels-protocol.herokuapp.com
${browser}                Headless Chrome
${options}                add_experimental_option('excludeSwitches',['enable-logging'])

*** Keywords ***
Nova sessão
    Open Browser       ${url}       ${browser}       options=${OPTIONS}      

Encerra sessão
    Capture Page Screenshot  
    Close Browser

