*** Settings ***
Documentation      Contains common methods/keywords.
Resource            ../pageobjects/page.resource

*** Variables ***
${inputUsername}        xpath://input[@id='user-name']
${inputPassword}        xpath://input[@id='password']
${btnLogin}             xpath://input[@id='login-button']
${msgError}             xpath://h3[@data-test='error']

*** Keywords ***
Open saucedemo
    [Arguments]     ${path}
    Open    ${path}

Login
    [Arguments]     ${username}    ${password}
    Wait to be displayed    ${inputUsername}
    Input Text    ${inputUsername}    ${username}
    Input Password    ${inputPassword}    ${password}
    Click Button    ${btnLogin}

Obtain message error
    Get text when present    ${msgError}
    [Return]    ${msgError}