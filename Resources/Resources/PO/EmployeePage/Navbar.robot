*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NVABAR_LINK_HOME} =                           xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[1]
${NAVBAR_LINK_HOME_LOCATION} =                  https://extranet.extraajat.com/tt/

${NVABAR_LINK_TYOVUOROT} =                      xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[2]
${NAVBAR_LINK_TYOVUOROT_LOCATION} =             https://extranet.extraajat.com/tt/tyovuorot

${NVABAR_LINK_VARAA_TYOVUOROJA} =               xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[3]
${NAVBAR_LINK_VARAA_TYOVUOROJA_LOCATION} =      https://extranet.extraajat.com/tt/varaa-tyovuoroja

${NVABAR_LINK_KALENTERI} =                      xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[4]
${NAVBAR_LINK_KALENTERI_LOCATION} =             https://extranet.extraajat.com/tt/kalenteri

${NVABAR_LINK_OHJEET} =                         xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[5]
${NAVBAR_LINK_OHJEET_LOCATION} =                https://extranet.extraajat.com/tt/ohjeet

${NVABAR_LINK_VERKKOKOULUTUS} =                 xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[6]
${NAVBAR_LINK_VERKKOKOULUTUS_LOCATION} =        https://extranet.extraajat.com/tt/verkkokoulutus/

${NVABAR_LINK_OMAT_TIEDOT} =                    xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[7]
${NAVBAR_LINK_OMAT_TIEDOT_LOCATION} =           https://extranet.extraajat.com/tt/omat-tiedot

${NVABAR_LINK_YHTEYSTIEDOT} =                   xpath=/html/body/div/div[1]/div/div/div[2]/div/div/ul/li[8]
${NAVBAR_LINK_YHTEYSTIEDOT_LOCATION} =          https://extranet.extraajat.com/tt/yhteystiedot

${NAVBAR_HOME_NEGATIVE_LOCATION} =              https://extranet.extraajat.com/tt/invalid
${NAVBAR_TYOVUOROT_NEGATIVE_LOCATION} =         https://extranet.extraajat.com/tt/tyovuorot/invalid
${NAVBAR_VARAA_TYOVUOROJA_NEGATIVE_LOCATION} =  https://extranet.extraajat.com/tt/varaa-tyovuoroja/invalid
${NAVBAR_KALENTERI_NEGATIVE_LOCATION} =         https://extranet.extraajat.com/tt/kalenteri/invalid
${NAVBAR_OHJEET_NEGATIVE_LOCATION} =            https://extranet.extraajat.com/tt/ohjeet/invalid
${NAVBAR_VERKKOKOULUTUS_NEGATIVE_LOCATION} =   https://extranet.extraajat.com/tt/verkkokoulutus/invalid
${NAVBAR_OMAT_TIEDOT_NEGATIVE_LOCATION} =      https://extranet.extraajat.com/tt/omat-tiedot/invalid
${NAVBAR_YHTEYSTIEDOT_NEGATIVE_LOCATION} =     https://extranet.extraajat.com/tt/yhteystiedot/invalid



*** Keywords ***
#User click on Home Link
#    [Documentation]             Click on the Home link in the navbar
#    [Tags]                      1001
#    Click Element               ${NVABAR_LINK_HOME}
#    Wait Until Location Is      ${NAVBAR_LINK_HOME_LOCATION}           timeout=10s
#
#User click on Tyovuorot Link
#    [Documentation]             Click on the Työvuorot link in the navbar
#    [Tags]                      1002
#    Click Element               ${NVABAR_LINK_TYOVUOROT}
#    Wait Until Location Is      ${NAVBAR_LINK_TYOVUOROT_LOCATION}     timeout=10s
#
#User click on Varata Tyovuoroja Link
#    [Documentation]             Click on the Varata Työvuoroja link in the navbar
#    [Tags]                      1003
#    Click Element               ${NVABAR_LINK_VARAA_TYOVUOROJA}
#    Wait Until Location Is      ${NAVBAR_LINK_VARAA_TYOVUOROJA_LOCATION}        timeout=10s
#
#User click on Kalenteri Link
#    [Documentation]             Click on the Kalenteri link in the navbar
#    [Tags]                      1004
#    Click Element               ${NVABAR_LINK_KALENTERI}
#    Wait Until Location Is      ${NAVBAR_LINK_KALENTERI_LOCATION}               timeout=10s
#
#User click on Ohjeet Link
#    [Documentation]             Click on the Ohjeet link in the navbar
#    [Tags]                      1005
#    Click Element               ${NVABAR_LINK_OHJEET}
#    Wait Until Location Is      ${NAVBAR_LINK_OHJEET_LOCATION}                  timeout=10s
#
#User click on Verkkokoulutus Link
#    [Documentation]             Click on the Verkkokoulutus link in the navbar
#    [Tags]                      1006
#    Click Element               ${NVABAR_LINK_VERKKOKOULUTUS}
#    Wait Until Location Is      ${NAVBAR_LINK_VERKKOKOULUTUS_LOCATION}          timeout=10s
#
#User click on Omat Tiedot Link
#    [Documentation]             Click on the Omat Tiedot link in the navbar
#    [Tags]                      1007
#    Click Element               ${NVABAR_LINK_OMAT_TIEDOT}
#    Wait Until Location Is      ${NAVBAR_LINK_OMAT_TIEDOT_LOCATION}             timeout=10s
#
#User click on Yhteystiedot Link
#    [Documentation]             Click on the Yhteystiedot link in the navbar
#    [Tags]                      1008
#    Click Element               ${NVABAR_LINK_YHTEYSTIEDOT}
#    Wait Until Location Is      ${NAVBAR_LINK_YHTEYSTIEDOT_LOCATION}            timeout=10s
#
#
#
##### Negative Scenarios ####
#
#User click on Home Link Negative
#    [Documentation]    Click Home link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_HOME}
#    ${wrong_url}=      set variable     ${NAVBAR_HOME_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_HOME}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#
#User click on Tyovuorot Link Negative
#    [Documentation]    Click Työvuorot link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_TYOVUOROT}
#    ${wrong_url}=      Set Variable    ${NAVBAR_TYOVUOROT_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_TYOVUOROT}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#
#User click on Varata Tyovuoroja Link Negative
#    [Documentation]    Click Varata Työvuoroja link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_VARAA_TYOVUOROJA}
#    ${wrong_url}=      Set Variable    ${NAVBAR_VARAA_TYOVUOROJA_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_VARAA_TYOVUOROJA}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#
#User click on Kalenteri Link Negative
#    [Documentation]    Click Kalenteri link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_KALENTERI}
#    ${wrong_url}=      Set Variable    ${NAVBAR_KALENTERI_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_KALENTERI}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#
#User click on Ohjeet Link Negative
#    [Documentation]    Click Ohjeet link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_OHJEET}
#    ${wrong_url}=      Set Variable    ${NAVBAR_OHJEET_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_OHJEET}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#
#User click on Verkkokoulutus Link Negative
#    [Documentation]    Click Verkkokoulutus link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_VERKKOKOULUTUS}
#    ${wrong_url}=      Set Variable    ${NAVBAR_VERKKOKOULUTUS_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_VERKKOKOULUTUS}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#
#User click on Omat Tiedot Link Negative
#    [Documentation]    Click Omat Tiedot link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_OMAT_TIEDOT}
#    ${wrong_url}=      Set Variable    ${NAVBAR_OMAT_TIEDOT_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_OMAT_TIEDOT}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#
#User click on Yhteystiedot Link Negative
#    [Documentation]    Click Yhteystiedot link and verify it does NOT redirect to a wrong location
#    [Tags]             negative
#    Click Element      ${NVABAR_LINK_YHTEYSTIEDOT}
#    ${wrong_url}=      Set Variable    ${NAVBAR_YHTEYSTIEDOT_NEGATIVE_LOCATION}
#    Wait Until Page Contains Element    ${NVABAR_LINK_YHTEYSTIEDOT}    timeout=5s
#    Sleep              1s
#    ${current_url}=    Get Location
#    Should Not Be Equal    ${current_url}    ${wrong_url}
#


#### Other Negative Scenarios ####

User click on Työvuorot Link From Home and Then Home Link From Työvuorot page
    [Documentation]    Click Home link and verify the URL changes (does not stay the same)
    ${before}=    Get Location
    # If already on Home, go to Työvuorot first
    Run Keyword If    '${before}' == '${NAVBAR_LINK_HOME_LOCATION}'    Go To Tyovuorot Page
    ${before}=    Get Location
    Click Element    ${NVABAR_LINK_HOME}
    Sleep    1s
    ${after}=    Get Location
    Should Not Be Equal    ${before}    ${after}

Go To Tyovuorot Page
    [Documentation]    Navigate to Työvuorot page to ensure we are not on Home
    Click Element    ${NVABAR_LINK_TYOVUOROT}
    Wait Until Location Is    ${NAVBAR_LINK_TYOVUOROT_LOCATION}    timeout=10s


User click on Ohjeet Link From Työvuorot and Then Työvuorot Link From Ohjeet page
    [Documentation]    From Home, go to Työvuorot, then Ohjeet, then back to Työvuorot, verifying URL changes each time
    Go To Tyovuorot Page
    ${before_ohjeet}=    Get Location
    Click Element    ${NVABAR_LINK_OHJEET}
    Wait Until Location Is    ${NAVBAR_LINK_OHJEET_LOCATION}    timeout=10s
    ${after_ohjeet}=    Get Location
    Should Not Be Equal    ${before_ohjeet}    ${after_ohjeet}
    Click Element    ${NVABAR_LINK_TYOVUOROT}
    Wait Until Location Is    ${NAVBAR_LINK_TYOVUOROT_LOCATION}    timeout=10s
    ${after_tyovuorot}=    Get Location
    Should Not Be Equal    ${after_ohjeet}    ${after_tyovuorot}

