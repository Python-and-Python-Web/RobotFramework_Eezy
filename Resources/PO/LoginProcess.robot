*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNIN_USERNAME_TEXTBOX} =            name=_username
${SIGNIN_PASSWORD_TEXTBOX} =            id=password
${SIGNIN_SUBMIT_BUTTON} =               name=login



*** Keywords ***
Login With Valid Credentials
     [Arguments]    ${Username}             ${Password}
     Fill "Username" Field                  ${Username}
     Fill "Password" Field                  ${Password}
     Click "Login" Button


Fill "Username" Field
    [Arguments]    ${Username}
    input text                              ${SIGNIN_USERNAME_TEXTBOX}          ${Username}

Fill "Password" Field
    [Arguments]    ${Password}
    input text                              ${SIGNIN_PASSWORD_TEXTBOX}          ${Password}

Click "Login" Button
    click button                            ${SIGNIN_SUBMIT_BUTTON}