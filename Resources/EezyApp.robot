*** Settings ***
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/LoginProcess.robot
Resource    ../Resources/PO/EmployeePage.robot

*** Variables ***


*** Keywords ***
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


Login With Valid Credentials
   [Arguments]    ${Username}     ${Password}
   LoginProcess.Login With Valid Credentials    ${Username}     ${Password}
   EmployeePage.Verify Employee Username Loaded

