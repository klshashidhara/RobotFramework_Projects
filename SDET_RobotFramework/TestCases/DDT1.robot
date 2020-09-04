*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Cases ***
Right User Empty Pwd    admin@yourstore.com     ${EMPTY}
Right User Wrong Pwd    admin@yourstore.com     xyz
Wrong User Right Pwd    admi@yourstore.com      admin
Wrong User Empty Pwd    admi@yourstore.com      ${EMPTY}
Wrong User Wrong Pwd    admi@yourstore.com      xyz

*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input UserName    ${username}
    Input Pwd    ${password}
    click login button
    Error message should be displayed
