*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Selecting Frames
    open browser    https://www.selenium.dev/selenium/docs/api/java/index   chrome
    maximize browser window

    select frame    packageListFrame    #id xpath name
    click link    org.openqa.selenium
    unselect frame
    sleep    5

    select frame    packageFrame
    click link    WebDriver
    unselect frame
    sleep    5

    select frame    classFrame
    click link    Help
    close browser
