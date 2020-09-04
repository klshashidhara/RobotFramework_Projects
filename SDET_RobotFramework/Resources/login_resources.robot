*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login URL}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${Browser}      chrome

*** Keywords ***
Open my Browser
    open browser    ${Login URL}    ${Browser}
    maximize browser window

Close Browsers
    close all browsers

Input UserName
    [Arguments]    ${username}
    input text    id:Email      ${username}

Input Pwd
    [Arguments]    ${password}
    input text    id:Password   ${password}

click login button
    click element    xpath://input[@class='button-1 login-button']

Login Alert
    handle alert    accept

click logout link
    click element    xpath://a[contains(text(),'Logout')]

Error message should be displayed
    page should contain    Login was unsuccessful

Dashboard page should be visible
    page should contain    Dashboard