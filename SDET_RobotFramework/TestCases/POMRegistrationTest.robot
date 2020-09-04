*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://demo.guru99.com/test/newtours/

*** Test Cases ***
Register new User
    Open my Browser    ${SiteUrl}   ${Browser}
    Click Register Link
    sleep    3 seconds
    Enter FirstName    Davidee
    Enter LastName    John
    Enter Phone    4167683591
    Enter Email    davideejohn@gmail.com
    Enter Address    12 Front St W
    Enter City    Toronto
    Enter State    Ontario
    Enter Postal Code    M1M2M3
    Enter Country    CANADA
    Enter UserName    davidxyz
    Enter Password    davidxyz
    Enter Confirm Password    davidxyz
    click Submit
    verify successfull registration
    close my browsers
