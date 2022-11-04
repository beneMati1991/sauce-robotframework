*** Settings ***
Documentation      Contains common methods/keywords.
Library            SeleniumLibrary

*** Keywords ***
Open
    [Arguments]     ${path}
    Open Browser    https://www.saucedemo.com/${path}       chrome

Click item when present
    [Arguments]     ${locator}     ${timeout}=5 seconds
    Wait Until Page Contains Element    ${locator}     ${timeout}
    Mouse Over    ${locator}
    Click Element    ${locator}

Get text when present
    [Arguments]     ${locator}     ${timeout}=5 seconds
    Wait Until Page Contains Element    ${locator}     ${timeout}
    Mouse Over    ${locator}
    Get Text    ${locator}

Wait to be displayed
    [Arguments]     ${locator}     ${timeout}=8 seconds
    Log To Console    ${timeout}
    Wait Until Page Contains Element    ${locator}     ${timeout}
    Mouse Over    ${locator}