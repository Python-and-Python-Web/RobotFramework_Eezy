*** Settings ***
Library    SeleniumLibrary
Documentation       Login Process Testing
Resource            ../../Resources/CommonFeature.robot
Resource            ../../Resources/EezyApp.robot

Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER} =                            chrome
${URL} =                                https://extranet.extraajat.com/
${VALID_USERNAME} =                     emp_46409
${VALID_PASSWORD} =                     zoya1234

*** Test Cases ***
Verify that Employee Full Name is loaded
    [Documentation]                     Testing: Verify Employee Full Name is loaded
    [Tags]                              1001 Smoke Login
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}

Verify Logo Link Redirection
    [Documentation]    Testing: Verify redirection when clicking the logo link
    [Tags]             1002 Smoke Header
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Logo Link Redirection

Verify Notification Bell Dropdown Visible
    [Documentation]    Testing: Verify dropdown visibility after clicking the notification bell icon
    [Tags]             1003 Smoke Header
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Notification Bell Dropdown Visible

Verify Image Visibility
    [Documentation]    Testing: Verify that the image is visible on the page
    [Tags]             1004 Smoke Header
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Image Visibility

Verify Logo Redirection Negative
    [Documentation]    Testing: Verify that redirection does not happen to the correct URL
    [Tags]             1005 Negative Header
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Logo Redirection Negative

Verify Notification Bell Dropdown Not Visible
    [Documentation]    Testing: Verify that the dropdown is not visible when the notification bell icon is not clicked
    [Tags]             1006 Negative Header
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Notification Bell Dropdown Not Visible