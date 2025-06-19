*** Settings ***
Documentation       HomePage Testing Scenarios
Resource            ../Resources/CommonFeature.robot
Resource            ../Resources/EezyApp.robot

Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER} =                            chrome
${URL} =                                https://extranet.extraajat.com/


*** Test Cases ***
HomePage Should load correctly
    [Documentation]     Verify that the HomePage loads correctly
    [Tags]              1001
    EezyApp.Go To "Home" Page

Confirm HomePage Header Paragraph is loaded
    [Documentation]     Verify that the HomePage header paragraph is loaded
    [Tags]              1002
    EezyApp.Verify HomePage Header Paragraph is loaded

Confirm Full CompanyName should be visible
    [Documentation]     Verify that the full company name is visible
    [Tags]              1003
    EezyApp.Verify Company Name is loaded

Confirm Business ID should be visible
    [Documentation]     Verify that the business ID is visible
    [Tags]              1004
    EezyApp.Verify Business ID is loaded

Confirm Online Billing Address should be visible
    [Documentation]     Verify that the online billing address is visible
    [Tags]              1005
    EezyApp.Verify Online Billing Address is loaded

Confirm Online Billing Operator should be visible
    [Documentation]     Verify that the online billing operator is visible
    [Tags]              1006
    EezyApp.Verify Online Billing Operator is loaded

Confirm Online Billing ID should be visible
    [Documentation]     Verify that the online billing ID is visible
    [Tags]              1007
    EezyApp.Verify Online Billing ID is loaded

Confirm Company Postal Address should be visible
    [Documentation]     Verify that the company postal address is visible
    [Tags]              1008
    EezyApp.Verify Company Postal Address is loaded




