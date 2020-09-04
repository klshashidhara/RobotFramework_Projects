*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Test Dropdowns
    open browser    ${url}  ${browser}
    maximize browser window

    #Select dropdown
    select from list by label    continents     Australia
    sleep    4
    select from list by index    continents     5
    sleep    4

    #select from list
    select from list by label    selenium_commands      Switch Commands
    sleep    5
    select from list by index    selenium_commands      3
    sleep    3
    unselect from list by label    selenium_commands    Wait Commands

    close browser




*** Keywords ***
