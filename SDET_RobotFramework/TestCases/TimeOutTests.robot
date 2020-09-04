*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
Testing Speed Tests

    open browser    ${url}  ${browser}
    maximize browser window
    ${speed}    get selenium timeout
    log to console    Selenium timeout is ${speed}

    set selenium timeout    7 seconds
    ${speed}    get selenium timeout
    log to console    Selenium timeout is ${speed}
    wait until page contains    Registerasd
    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email        abcd@gmail.com
    input text    name:Password     abcd123
    input text    name:ConfirmPassword  abcd123
    ${speed}    get selenium speed
    log to console    Selenium speed is ${speed}


*** Keywords ***

