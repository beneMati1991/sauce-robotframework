*** Settings ***
Documentation      Contains common methods/keywords.
Resource            ../pageobjects/page.resource

*** Variables ***
${titleProducts}         xpath://span[contains(text(),'Products')]

*** Keywords ***
Validate correctly page
    Get text when present    ${titleProducts}
    [Return]    ${titleProducts}