*** Settings ***
Documentation       Footer Section Testing
Resource            ../../Resources/CommonFeature.robot
Resource            ../../Resources/EezyApp.robot

Test Setup          Begin Web Test
Test Teardown       End Web Test



*** variables ***
${BROWSER} =                            chrome
${URL} =                                https://extranet.extraajat.com/
${VALID_USERNAME} =                     emp_46409
${VALID_PASSWORD} =                     zoya1234



*** Test Cases ***
HomePage Should load correctly
    [Documentation]     Verify that the HomePage loads correctly
    [Tags]              1001
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}


Footer Heading 1 stuff Should be visible
    [Documentation]     Verify that the footer heading stuffs should be visible
    [Tags]              1002
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Footer Heading 1 and contents are loaded


Footer Heading 2 stuff Should be visible
    [Documentation]     Verify that the footer heading stuffs should be visible
    [Tags]              1003
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Footer Heading 2 and contents are loaded


Footer Heading 3 stuff Should be visible
    [Documentation]     Verify that the footer heading stuffs should be visible
    [Tags]              1004
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials            ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Footer Heading 3 and contents are loaded
    

Footer Heading 4 stuff Should be visible
    [Documentation]     Verify that the footer heading stuffs should be visible
    [Tags]              1005
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials           ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Footer Heading 4 and contents are loaded


Facebook Logo Link Should Redirect To Facebook Page
    [Documentation]     Verify that clicking the Facebook logo redirects to the correct Facebook page
    [Tags]              1006
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials            ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Facebook Logo Link Redirection


Twitter Logo Link Should Redirect To Twitter Page
    [Documentation]     Verify that clicking the Twitter logo redirects to the correct Twitter page
    [Tags]              1007
    EezyApp.Go To "Home" Page
    EezyApp.Login With Valid Credentials            ${VALID_USERNAME}    ${VALID_PASSWORD}
    EezyApp.Verify Twitter Logo Link Redirection


#LinkedIn Logo Link Should Redirect To LinkedIn Page
#    [Documentation]     Verify that clicking the LinkedIn logo redirects to the correct LinkedIn page
#    [Tags]              1008
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials            ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify LinkedIn Logo Link Redirection
#
#
#Youtube Logo Link Should Redirect To Youtube Page
#    [Documentation]     Verify that clicking the YouTube logo redirects to the correct YouTube page
#    [Tags]              1009
#    EezyApp.Go To "Home" Page
#    EezyApp.Login With Valid Credentials            ${VALID_USERNAME}    ${VALID_PASSWORD}
#    EezyApp.Verify Youtube Logo Link Redirection
