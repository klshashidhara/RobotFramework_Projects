*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Handling Alerts
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    click element    xpath://button[contains(text(),'Click Me')]

    #handle alert    accept
    #handle alert    dismiss
    handle alert    leave
    alert should be present    Press a button!
