*** Settings ***
Library    SeleniumLibrary
Documentation       Login Process Testing
Resource            ../Resources/CommonFeature.robot
Resource            ../Resources/EezyApp.robot

Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER} =                            chrome
${URL} =                                https://extranet.extraajat.com/
${VALID_USERNAME} =                     emp_46409
${VALID_PASSWORD} =                     zoya1234

*** Test Cases ***
Should be able to Login with valid credentials
    [Documentation]                     Testing: Should be able to Login with valid credentials
    [Tags]                              1001 Smoke Login
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}