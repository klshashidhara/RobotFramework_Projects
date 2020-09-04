*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.csv

Suite Setup     Open my Browser
Suite Teardown  Close Browsers
Test Template    Invalid Login
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx      shee_name=Sheet1

*** Test Cases ***
LoginWithExcelData using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input UserName    ${username}
    Input Pwd    ${password}
    click login button
    Error message should be displayed