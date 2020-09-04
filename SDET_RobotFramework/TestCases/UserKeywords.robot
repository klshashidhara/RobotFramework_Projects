*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
Test UserKeywords
    ${pagetitle}    LaunchBrowser   ${url}  ${browser}
    log to console    ${pagetitle}
    log    ${pagetitle}
    input text    name:userName     Admin
    input text    name:password     admin
    sleep    4
    close browser

