*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
Testing Speed Tests

    ${speed}    get selenium speed
    log to console    Selenium speed is ${speed}
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium speed    1 second
    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email        abcd@gmail.com
    input text    name:Password     abcd123
    input text    name:ConfirmPassword  abcd123
    ${speed}    get selenium speed
    log to console    Selenium speed is ${speed}

*** Keywords ***

