*** Settings ***
Documentation    This is a test with keywords.
Library     SeleniumLibrary
Resource    ../../Resources/kws.robot
Resource    ../../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Test Cases ***
LoginTestWithResourceKeyWords
    Enter User Name
    Enter Password
    Click Login
    Set Browser speed
    Assert Dashboard Title