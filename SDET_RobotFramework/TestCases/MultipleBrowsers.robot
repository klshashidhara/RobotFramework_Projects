*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing to switch browsers
    open browser    https://www.google.com/     chrome
    maximize browser window

    open browser    https://www.bing.com/       chrome
    maximize browser window

    switch browser    1
    ${title1}=   get title
    log to console    Title of window is ${title1}

    switch browser    2
    ${title2}=   get title
    log to console    Title of window is ${title2}

    sleep    4

    close all browsers