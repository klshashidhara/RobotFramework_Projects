*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scrolling the Page functionality

    open browser    https://demo.nopcommerce.com/login?returnUrl=%2F    chrome
    maximize browser window

    execute javascript    window.scrollTo(0,300)
    sleep    3
    scroll element into view   id:newsletter-subscribe-button
    sleep    3
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    sleep    3
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    3
    close browser