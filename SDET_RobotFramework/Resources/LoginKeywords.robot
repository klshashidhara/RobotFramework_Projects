*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteURL}   ${Browser}
    open browser    ${SiteURL}   ${Browser}
    maximize browser window

Enter UserName
    [Arguments]    ${username}
    input text    ${txt_loginUserName}  ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}  ${password}

Click Signin
    click element   ${btn_Submit}

Verify Successfull Login
    title should be    Login: Mercury Tours

Accept Alert
    handle alert    ACCEPT

Close Browsers
    close all browsers