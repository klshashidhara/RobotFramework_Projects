*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing the screenshot functionality
    open browser    https://opensource-demo.orangehrmlive.com/      chrome
    maximize browser window
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    capture element screenshot    xpath://*[@id="divLogo"]/img      C:/Users/Shashidhara/PycharmProjects/Automation/element.png
    capture page screenshot    C:/Users/Shashidhara/PycharmProjects/Automation/page.png

