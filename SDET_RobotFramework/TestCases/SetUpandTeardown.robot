*** Settings ***

Suite Setup    log to console   Opening the browser
Suite Teardown  log to console  closing the browser

Test Setup  log to console  Login to Application
Test Teardown   log to console  Logout of Application

*** Test Cases ***
TC1 Prepaid Recharge
    log to console    This is Prepaid Recharge TestCase

TC2 Postpaid Recharge
    log to console    This is Postpaid Recharge TestCase

TC3 Search
    log to console    This is Search Testcase

TC4 Advance Search
    log to console    This is advance search test case
