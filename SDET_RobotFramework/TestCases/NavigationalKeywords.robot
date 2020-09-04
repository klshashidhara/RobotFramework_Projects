*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Navigational Keywords
    open browser    https://www.google.com/     chrome
    maximize browser window
    ${title}=   get location
    log to console    The location is ${title}

    go to    https://www.bing.com/
    maximize browser window
    ${title}=   get location
    log to console    The location is ${title}

    go back
    maximize browser window
    ${title}=   get location
    log to console    The location is ${title}

    close browser