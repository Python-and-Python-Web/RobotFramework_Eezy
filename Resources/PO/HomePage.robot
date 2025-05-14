*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${HOME_HEADER_LABEL} =                      Tervetuloa!
${HEADER_PARAGRAPH} =                       xpath=/html/body/div/div[2]/div/p
${COMPANY_NAME} =                           Henkilöstöratkaisu Extraajat Oy
${BUSINESS_ID_FOOTER} =                     2490480-5
${ONLINE_BILLING_ADDRESS} =                 003724904805
${ONLINE_BILLING_OPERATOR} =                Opus Capita Solutions Oy
${ONLINE_BILLING_ID} =                      E204503
${COMPANY_POSTAL_ADDRESS} =                 PL53645, 00063 LASKUNET


*** Keywords ***
Navigate To Eezy Website
    go to                       ${URL}

Verify HomePage Loaded
    wait until page contains    ${HOME_HEADER_LABEL}

Verify HomePage header paragraph is loaded
    Wait Until Element Is Visible    ${HEADER_PARAGRAPH}

Full CompanyName should be visible
    wait until page contains    ${COMPANY_NAME}

BusinessID Should be visible
    wait until page contains    ${BUSINESS_ID_FOOTER}

Online Billing Address Should be visible
    wait until page contains    ${ONLINE_BILLING_ADDRESS}

Online Billing Operator Should be visible
    wait until page contains    ${ONLINE_BILLING_OPERATOR}

Online Billing ID Should be visible
    wait until page contains    ${ONLINE_BILLING_ID}

Company Postal Address Should be visible
    wait until page contains    ${COMPANY_POSTAL_ADDRESS}