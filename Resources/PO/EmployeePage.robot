*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${EMPLOYEE_USERNAME} =                      Qaderzada Abdulsata
${EMPLOYEE_WORKSHIFT_SUMMARY} =             Vuorokatsaus
${EMPLOYEEPAGE_INFORMATION_SECTION} =       Tiedotteet
${EMPLOYEEPAGE_INTERNAL_WORKPLACE} =        Sisäiset työpaikat

*** Keywords ***

Verify Employee Username Loaded
    wait until page contains    ${EMPLOYEE_USERNAME}

Verify Workshift content Loaded
    wait until page contains    ${EMPLOYEE_WORKSHIFT_SUMMARY}

Verify Information section content Loaded
    wait until page contains    ${EMPLOYEEPAGE_INFORMATION_SECTION}

Verify Internal workplace content Loaded
    wait until page contains    ${EMPLOYEEPAGE_INTERNAL_WORKPLACE}

