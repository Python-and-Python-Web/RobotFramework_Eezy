*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMPLOYEE_USERNAME} =              Qaderzada Abdulsatar
${LOGO_LINK_SELECTOR} =             class=logo-default
${URL_Link} =                       https://extranet.extraajat.com/tt/
${INCORRECT_URL_Link} =             https://eezy.fi/
${NOTIFICATION_BELL_ICON} =         class=icon-bell
${NOTIFICATION_DROPDOWN} =          xpath=//*[@id="header_notification_bar"]/ul
${EMPLOYEE_IMAGE_XPATH} =           xpath=/html/body/div/div[1]/div/div/div[1]/div/div[2]/ul/li[3]/a/img





*** Keywords ***

Verify Employee Username Loaded
    wait until page contains            ${EMPLOYEE_USERNAME}

Click Logo Link
    [Documentation]                     Click the logo link in the header
    Click Element                       ${LOGO_LINK_SELECTOR}

Verify Logo Redirection
    [Documentation]                     Verify redirection to the correct URL after clicking the logo
    Location Should Be                  ${URL_Link}

Verify Logo Redirection Negative
    [Documentation]                     Verify that the redirection does not happen to the incorrect URL
    ${status}=                          Run Keyword And Return Status    SeleniumLibrary.Location Should Be    ${INCORRECT_URL_Link}
    Run Keyword If                      ${status}    Fail    Redirection happened to the incorrect URL

Click Notification Bell Icon
    [Documentation]                     Click the notification bell icon in the header
    Click Element                       ${NOTIFICATION_BELL_ICON}

Verify Notification Bell Dropdown Visible
    [Documentation]                     Verify that the dropdown is visible after clicking the notification bell icon
    Wait Until Element Is Visible       ${NOTIFICATION_DROPDOWN}    timeout=20s

Verify Notification Bell Dropdown Not Visible
    [Documentation]                     Verify that the dropdown is not visible when the notification bell icon is not clicked
    Element Should Not Be Visible       ${NOTIFICATION_DROPDOWN}

Verify Image Is Visible
    [Documentation]                     Verify that the image is visible on the page
    Wait Until Element Is Visible       ${EMPLOYEE_IMAGE_XPATH}    timeout=20s


