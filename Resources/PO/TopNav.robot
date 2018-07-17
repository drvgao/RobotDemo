*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
${SEARCH_TERM} =    Ferrari 458
${TOPNAV_REGISTER_LINK} =  Register
${TOPNAV_LOGIN_LINK} =  Log in
${TOPNAV_HEADING} =  Top navigation heading - change later

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}

Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    
Verify Page Loaded
    element text should be  ${TOPNAV_HEADING}  Register.

Click Registration Link
    Click Link  ${TOPNAV_REGISTER_LINK}

Click Login Link
    Click Link  ${TOPNAV_LOGIN_LINK}    