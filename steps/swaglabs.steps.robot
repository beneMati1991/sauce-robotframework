*** Settings ***
Documentation      Contains all steps to use on testing of Swaglabs web.
Resource            ../pageobjects/swaglabs.login.page.resource
Resource            ../pageobjects/swaglabs.inventory.page.resource

*** Keywords ***
Sign in Swaglabs
    [Arguments]     ${username}    ${password}
    Open saucedemo    ${EMPTY}
    Login    ${username}    ${password}
    ${result}=   Get Text     Validate correctly page
    Log To Console    ${result}
    Should Be Equal    ${result.text}    'Products'