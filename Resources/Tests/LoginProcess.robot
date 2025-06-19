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
${INVALID_USERNAME} =                   emp_46000
${INVALID_PASSWORD} =                   zoya0000

*** Test Cases ***
Should be able to Login with valid credentials
    [Documentation]                     Testing: Should be able to Login with valid credentials
    [Tags]                              1001 Smoke Login
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials     ${VALID_USERNAME}    ${VALID_PASSWORD}

Should Not Be Able To Login Without Username
    [Documentation]                     Testing: Should not be able to login without username
    [Tags]                              1002 Negative Login Username missing
    EezyApp.Go To "Home" Page
    EezyApp.Login Without Username      ${VALID_PASSWORD}

Should Not Be Able To Login Without Password
    [Documentation]                     Testing: Should not be able to login without password
    [Tags]                              1003 Negative Login Password missing
    EezyApp.Go To "Home" Page
    EezyApp.Login Without Password      ${VALID_USERNAME}

Leave both Passwrod and Username Empty
    [Documentation]                     Testing: Leave both Passwrod and Username Empty
    [Tags]                              1004 Both Password and Usermname are empty
    EezyApp.Go To "Home" Page
    EezyApp.Leave both Passwrod and Username Empty

Should Not Be Able To Login With Invalid Credentials
    [Documentation]                     Testing: User given invalid credentials
    [Tags]                              1005 Negative Login Invalid Credentials
    EezyApp.Go To "Home" Page
    EezyApp.Login With InValid Credentials     ${INVALID_USERNAME}    ${INVALID_PASSWORD}