*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
Testing Speed Tests

    open browser    ${url}  ${browser}
    maximize browser window

     ${speed}    get selenium implicit wait
    log to console    Selenium implicit time is ${speed}

    set selenium implicit wait    10 seconds
    ${speed}    get selenium implicit wait
    log to console    Selenium implicit time is ${speed}
    select radio button    Gender   M
    input text    name:FirstName1    David
    input text    name:LastName     John
    input text    name:Email        abcd@gmail.com
    input text    name:Password     abcd123
    input text    name:ConfirmPassword  abcd123
    ${speed}    get selenium speed
    log to console    Selenium speed is ${speed}

*** Keywords ***

