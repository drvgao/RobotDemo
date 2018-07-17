*** Settings ***
Library    OperatingSystem    
Documentation    This is a test with OS.
Library     SeleniumLibrary
Resource    ../../Resources/kws.robot
Resource    ../../Resources/Common.robot

*** Variables ***
${dir} =    outputs

*** Test Cases ***
Create a directory
    Create Directory    ${dir}
    Create Directory    ${dir}+1
    Should Exist   ${dir}
    

*** Keywords ***
    
    