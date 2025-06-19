*** Settings ***
Documentation       Navbar Testing
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
#HomePage Should load correctly
#    [Documentation]     Verify that the HomePage loads correctly
#    [Tags]              1001
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Home Link Redirection
#
#Työvuorot Page Should load correctly
#    [Documentation]     Verify that the Työvuorot page loads correctly
#    [Tags]              1002
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Tyovuorot Link Redirection
#
#Varata Työvuoroja Page Should load correctly
#    [Documentation]     Verify that the Varata Työvuoroja page loads correctly
#    [Tags]              1003
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Varata Tyovuoroja Link Redirection
#
#Kalenteri Page Should load correctly
#    [Documentation]     Verify that the Kalenteri page loads correctly
#    [Tags]              1004
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Kalenteri Link Redirection
#
#Ohjeet Page Should load correctly
#    [Documentation]     Verify that the Ohjeet page loads correctly
#    [Tags]              1005
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Ohjeet Link Redirection
#
#Verkkokoulutus Page Should load correctly
#    [Documentation]     Verify that the Verkkokoulutus page loads correctly
#    [Tags]              1006
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Verkkokoulutus Link Redirection
#
#Omat Tiedot Page Should load correctly
#    [Documentation]     Verify that the Omat Tiedot page loads correctly
#    [Tags]              1007
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Omat Tiedot Link Redirection
#
#Yhteystiedot Page Should load correctly
#    [Documentation]     Verify that the Yhteystiedot page loads correctly
#    [Tags]              1008
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Yhteystiedot Link Redirection
#
#### Negative Tests ###
#HomePage Home Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Home link does NOT redirect to an invalid location
#    [Tags]             1009
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Home Link Redirection Negative
#
#Tyovuorot Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Työvuorot link does NOT redirect to an invalid location
#    [Tags]             1010
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Tyovuorot Link Redirection Negative
#
#Varata Tyovuoroja Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Varata Työvuoroja link does NOT redirect to an invalid location
#    [Tags]             1011
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Varata Tyovuoroja Link Redirection Negative
#
#Kalenteri Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Kalenteri link does NOT redirect to an invalid location
#    [Tags]             1012
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Kalenteri Link Redirection Negative
#
#Ohjeet Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Ohjeet link does NOT redirect to an invalid location
#    [Tags]             1013
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Ohjeet Link Redirection Negative
#
#Verkkokoulutus Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Verkkokoulutus link does NOT redirect to an invalid location
#    [Tags]             1014
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Verkkokoulutus Link Redirection Negative
#
#Omat Tiedot Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Omat Tiedot link does NOT redirect to an invalid location
#    [Tags]             1015
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Omat Tiedot Link Redirection Negative
#
#Yhteystiedot Link Should Not Redirect To Invalid Location
#    [Documentation]    Verify that clicking the Yhteystiedot link does NOT redirect to an invalid location
#    [Tags]             1016
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Navbar Yhteystiedot Link Redirection Negative

#Redirection from between Home and Työvuorot Pages
#    [Documentation]     Verify that clicking the Home link changes the URL
#    [Tags]              1017
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify User click redirection to Työvuorot Page and then back to Home Page

Redirection from between Ohjeet and Työvuorot Pages
    [Documentation]     Verify that clicking the Ohjeet link changes the URL
    [Tags]              1018
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify User click redirection to Ohjeet Page and then back to Työvuorot Page










