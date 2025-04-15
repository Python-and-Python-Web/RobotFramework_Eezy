*** Settings ***
Resource    ../Resources/PO/HomePage.robot

*** Variables ***


*** Keywords ***
Go To "Home" Page
    HomePage.Navigate To
    HomePage.Verify HomePage Loaded


Verify HomePage Header Paragraph is loaded
    HomePage.Navigate To
    HomePage.Verify HomePage header paragraph is loaded

Verify Company Name is loaded
    HomePage.Navigate To
    HomePage.Full CompanyName should be visible

Verify Business ID is loaded
    HomePage.Navigate To
    HomePage.BusinessID Should be visible

Verify Online Billing Address is loaded
    HomePage.Navigate To
    HomePage.Online Billing Address Should be visible


Verify Online Billing Operator is loaded
    HomePage.Navigate To
    HomePage.Online Billing Operator Should be visible

Verify Online Billing ID is loaded
    HomePage.Navigate To
    HomePage.Online Billing ID should be visible

Verify Company Postal Address is loaded
    HomePage.Navigate To
    HomePage.Company Postal Address Should be visible


