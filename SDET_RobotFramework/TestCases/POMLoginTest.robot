*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteURL}  http://demo.guru99.com/test/newtours/
${Browser}  chrome
${user}     tutorial
${pwd}      tutorial

*** Test Cases ***
Login Test
    Open my Browser   ${SiteURL}     ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click Signin
    sleep    3 seconds
    Verify Successfull Login
    Close Browsers