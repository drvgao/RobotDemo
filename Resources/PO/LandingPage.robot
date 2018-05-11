*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL} =    http://www.amazon.com
${AMAZON_PG_TITLE} =    Your Amazon.com

*** Keywords ***
Load
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains  ${AMAZON_PG_TITLE}