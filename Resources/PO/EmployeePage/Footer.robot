*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${FOOTER_HEADING_TEXT_1} =                      EXTRAAJAT
${FOOTER_HEADING_TEXT_1_CONTENT} =              Toimimme yli 50 paikkakunnalla Suomessa. Meillä on 600 asiakasta ja 3000 työntekijää.

${FOOTER_HEADING_TEXT_2} =                      SÄHKÖPOSTIOSOITTEET
${FOOTER_HEADING_TEXT_2_CONTENT_1} =            kauppa.asiakaspalvelu@eezy.fi
${FOOTER_HEADING_TEXT_2_CONTENT_2} =            kauppa.tyovuorot@eezy.fi

${FOOTER_HEADING_TEXT_3} =                      SEURAA TYÖNANTAJAASI MYÖS SOMESSA
${FOOTER_HEADING_TEXT_3_LOGO_Facebook} =        class=facebook
${FOOTER_HEADING_TEXT_3_LOGO_Twitter} =         class=twitter
${FOOTER_HEADING_TEXT_3_LOGO_LinkedIn} =        class=linkedin
${FOOTER_HEADING_TEXT_3_LOGO_Youtube} =         class=youtube
${URL_Link_FOR_Facebook_PAGE} =                 https://www.facebook.com/Eezyhenkilostopalvelut/
${URL_Link_FOR_Twitter_PAGE} =                  https://x.com/eezyhenkilosto
${URL_Link_FOR_LinkedIn_PAGE} =                 https://www.linkedin.com/company/eezy-henkilostopalvelut/posts/?feedView=all
${URL_Link_FOR_Youtube_PAGE} =                  https://www.youtube.com/channel/UCULYVjngfEH-twjsMtRhxMw

${FOOTER_HEADING_TEXT_4} =                      PÄIVYSTYS
${FOOTER_HEADING_TEXT_4_CONTENT_1} =            Puh: 010 2797 800 | klo 8-16
${FOOTER_HEADING_TEXT_4_CONTENT_2} =            Sairauspoissaolot voi soittaa ma-pe klo 6-20, la klo 6-18 ja su klo 10-18




*** Keywords ***
Navigate To Eezy Website
    go to                       ${URL}

# Heading 1
Verify Footer Heading Text 1 is loaded
    wait until page contains    ${FOOTER_HEADING_TEXT_1}

Verify Footer Heading Text 1 content is loaded
    wait until page contains    ${FOOTER_HEADING_TEXT_1_CONTENT}


#Heading 2
Verify Footer Heading Text 2 is loaded
    wait until page contains    ${FOOTER_HEADING_TEXT_2}

Verify Footer Heading Text 2 contents are loaded
    wait until page contains    ${FOOTER_HEADING_TEXT_2_CONTENT_1}
    wait until page contains    ${FOOTER_HEADING_TEXT_2_CONTENT_2}


#Heading 3
Verify Footer Heading Text 3 is loaded
    wait until page contains    ${FOOTER_HEADING_TEXT_3}

Verify Footer Heading Text 3 Logo contents is loaded
    Wait Until Element Is Visible    ${FOOTER_HEADING_TEXT_3_LOGO_Facebook}     timeout=10s
    Wait Until Element Is Visible    ${FOOTER_HEADING_TEXT_3_LOGO_Twitter}      timeout=10s
    Wait Until Element Is Visible    ${FOOTER_HEADING_TEXT_3_LOGO_LinkedIn}     timeout=10s
    Wait Until Element Is Visible    ${FOOTER_HEADING_TEXT_3_LOGO_Yourtube}     timeout=10s


Click Facebook Logo Link And Verify Redirection to correct Facebook Page
    Click Element               ${FOOTER_HEADING_TEXT_3_LOGO_Facebook}
    Wait Until Location Is      ${URL_Link_FOR_Facebook_PAGE}           timeout=10s

Click Twitter Logo Link And Verify Redirection to correct Twitter Page
    Click Element               ${FOOTER_HEADING_TEXT_3_LOGO_Twitter}
    Wait Until Location Is      ${URL_Link_FOR_Twitter_PAGE}           timeout=10s

Click LinkedIN Logo Link And Verify Redirection to correct LinkedIN Page
    Click Element               ${FOOTER_HEADING_TEXT_3_LOGO_LinkedIN}
    Wait Until Location Is      ${URL_Link_FOR_LinkedIN_PAGE}           timeout=20s

Click Youtube Logo Link And Verify Redirection to correct Youtube Page
    Click Element               ${FOOTER_HEADING_TEXT_3_LOGO_Youtube}
    Wait Until Location Is      ${URL_Link_FOR_Youtube_PAGE}           timeout=20s


#Heading 4
Verify Footer Heading Text 4 is loaded
    wait until page contains    ${FOOTER_HEADING_TEXT_4}

Verify Footer Heading Text 4 Contents is loaded
    wait until page contains    ${FOOTER_HEADING_TEXT_4_CONTENT_1}
    wait until page contains    ${FOOTER_HEADING_TEXT_4_CONTENT_2}
