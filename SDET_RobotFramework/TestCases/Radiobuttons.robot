*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Checkboxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    1seconds


    #Select Radio Buttons
    select radio button    sex  Female
    select radio button    exp  5

    #Select Checkbox
    select checkbox    oolongtea
    select checkbox    RedTea
    select checkbox    BlackTea

    unselect checkbox    oolongtea
    close browser



