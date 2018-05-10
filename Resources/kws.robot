*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Username}       student
${Password}       MaharaDemo
${DashboardTitle}    Dashboard - Mahara

*** Keywords ***
Enter User Name
    Input Text    login_login_username    ${Username}

Enter Password
    Input Text    login_login_password    ${Password}

Click Login
    click button    login_submit

Assert Dashboard Title
    Title Should be    ${DashboardTitle}