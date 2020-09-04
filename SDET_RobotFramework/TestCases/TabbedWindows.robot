*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Tabbed Windows
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    maximize browser window

    click element    xpath://*[@id="Tabbed"]/a/button
    select window    SeleniumHQ Browser Automation
    sleep    4
    click element    xpath://*[@id="navbar"]/a[4]
    sleep    3
    close all browsers
