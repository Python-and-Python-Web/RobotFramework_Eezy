*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNIN_USERNAME_TEXTBOX} =            name=_username
${SIGNIN_PASSWORD_TEXTBOX} =            id=password
${SIGNIN_SUBMIT_BUTTON} =               name=login
${SIGNIN_ERROR_MESSAGE_1} =             Tarkista käyttäjätunnus/salasana
${SIGNIN_ERROR_MESSAGE_2} =             The presented password cannot be empty.


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
    
Leave Username Field Empty And Fill Password
    [Arguments]    ${Password}
    input text                              ${SIGNIN_PASSWORD_TEXTBOX}          ${Password}
    click button                            ${SIGNIN_SUBMIT_BUTTON}
    Wait Until Page Contains                ${SIGNIN_ERROR_MESSAGE_1}

Leave Password Field Empty And Fill Username
    [Arguments]    ${Username}
    input text                              ${SIGNIN_USERNAME_TEXTBOX}          ${Username}
    click button                            ${SIGNIN_SUBMIT_BUTTON}
    Wait Until Page Contains                ${SIGNIN_ERROR_MESSAGE_2}

Leave both Passwrod and Username Empty
    click button                            ${SIGNIN_SUBMIT_BUTTON}
    Wait Until Page Contains                ${SIGNIN_ERROR_MESSAGE_1}

Login With InValid Credentials
     [Arguments]    ${Username}             ${Password}
     Fill "Username" Field                  ${Username}
     Fill "Password" Field                  ${Password}
     Click "Login" Button
     Wait Until Page Contains               ${SIGNIN_ERROR_MESSAGE_1}