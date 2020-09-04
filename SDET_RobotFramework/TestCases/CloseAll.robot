*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
Testing Close All Browsers

    set selenium speed    1 second
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    http://www.practiceselenium.com/practice-form.html  chrome
    maximize browser window

    close all browsers



*** Keywords ***

