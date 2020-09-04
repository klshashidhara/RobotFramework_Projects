*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}   ${Browser}
    open browser   ${SiteUrl}   ${Browser}
    maximize browser window

Click Register Link
    click element   ${link_Reg}

Enter FirstName
    [Arguments]    ${firstName}
    input text  ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]    ${lastName}
    input text    ${txt_lastName}   ${lastName}

Enter Phone
    [Arguments]    ${phone}
    input text    ${txt_phone}  ${phone}

Enter Email
    [Arguments]    ${email}
    input text  ${txt_email}    ${email}

Enter Address
    [Arguments]    ${address}
    input text    ${txt_address}    ${address}

Enter City
    [Arguments]    ${city}
    input text  ${txt_city}     ${city}

Enter State
    [Arguments]    ${state}
    input text  ${txt_state}    ${state}

Enter Postal Code
    [Arguments]    ${postalcode}
    input text    ${txt_postCode}   ${postalcode}

Enter Country
    [Arguments]    ${country}
    select from list by label    ${drp_country}    ${country}

Enter UserName
    [Arguments]    ${username}
    input text    ${txt_username}   ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_password}   ${password}

Enter Confirm Password
    [Arguments]    ${confirmpassword}
    input text    ${txt_confirmedpassword}  ${confirmpassword}

click Submit
    click element    ${btn_signin}

Verify Successfull Registration
    page should contain    Thank you for registering

close my browsers
    close all browsers
