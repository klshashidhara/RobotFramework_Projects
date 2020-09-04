*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}

    logintoApplication

    close browser

*** Keywords ***
logintoApplication
    click link    xpath://a[@class='ico-login']
    sleep    2
    maximize browser window
    input text    id:Email      pavanoltraining@gmail.com
    input text    id:Password       Test@123
    click button    xpath://input[@class='button-1 login-button']