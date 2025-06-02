*** Settings ***
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/LoginProcess.robot
Resource    ../Resources/PO/EmployeePage/Header.robot

*** Variables ***


*** Keywords ***
#HomePage Testing
Go To "Home" Page
    HomePage.Navigate To Eezy Website
    HomePage.Verify HomePage Loaded

Verify HomePage Header Paragraph is loaded
    HomePage.Navigate To Eezy Website
    HomePage.Verify HomePage header paragraph is loaded

Verify Company Name is loaded
    HomePage.Navigate To Eezy Website
    HomePage.Full CompanyName should be visible

Verify Business ID is loaded
    HomePage.Navigate To Eezy Website
    HomePage.BusinessID Should be visible

Verify Online Billing Address is loaded
    HomePage.Navigate To Eezy Website
    HomePage.Online Billing Address Should be visible

Verify Online Billing Operator is loaded
    HomePage.Navigate To Eezy Website
    HomePage.Online Billing Operator Should be visible

Verify Online Billing ID is loaded
    HomePage.Navigate To Eezy Website
    HomePage.Online Billing ID should be visible

Verify Company Postal Address is loaded
    HomePage.Navigate To Eezy Website
    HomePage.Company Postal Address Should be visible

#Login Process Testing
Login With Valid Credentials
   [Arguments]    ${Username}     ${Password}
   LoginProcess.Login With Valid Credentials    ${Username}     ${Password}
   Header.Verify Employee Username Loaded

Login Without Username
    [Arguments]    ${Password}
    LoginProcess.Leave Username Field Empty And Fill Password    ${Password}

Login Without Password
    [Arguments]    ${Username}
    LoginProcess.Leave Password Field Empty And Fill Username    ${Username}

Leave both Passwrod and Username Empty
    LoginProcess.Leave both Passwrod and Username Empty

Login With InValid Credentials
    [Arguments]    ${Username}     ${Password}
    LoginProcess.Login With InValid Credentials    ${Username}     ${Password}

#EmployeePage Testing - Header section

Verify Logo Link Redirection
    Header.Click Logo Link
    Header.Verify Logo Redirection

Verify Notification Bell Dropdown Visible
    Header.Click Notification Bell Icon
    Header.Verify Notification Bell Dropdown Visible

Verify Image Visibility
    Header.Verify Image Is Visible

Verify Logo Redirection Negative
    Header.Click Logo Link
    Header.Verify Logo Redirection Negative

Verify Notification Bell Dropdown Not Visible
    Header.Verify Notification Bell Dropdown Not Visible


