*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
GetAlltheLinks
    open browser    ${url}  ${browser}
    maximize browser window
    ${LinksCount}=  get element count    xpath://a
    log to console    ${LinksCount}

    ${LinkItems}     create list
    : FOR   ${i}    IN RANGE    1   ${LinksCount}
    \   ${LinkText}=    get text    xpath:(//a)[${i}]
    \   log to console    ${LinkText}

    close browser