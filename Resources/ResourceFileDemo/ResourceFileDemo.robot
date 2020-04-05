*** Settings ***
Documentation     An example resource file
Library           SeleniumLibrary

*** Variables ***
${HOST}           en.wikipedia.org
${LOGIN URL}      http://${HOST}/wiki/Main_Page
${WELCOME URL}    http://${HOST}/w/index.php?title=Special:UserLogin&returnto=Main+Page
${BROWSER}        Chrome

*** Keywords ***
Open Login Page
    [Documentation]    Opens browser to login page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Wikipedia, the free encyclopedia

Input Name
    [Arguments]    ${name}
    Input Text    username_field    ${name}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}