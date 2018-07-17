*** Settings ***
Library  FakerLibrary    
Test Template  Log to console with some dummy data
*** Test Cases ***
TC1  1  2
TC2  3  4      
*** Keywords ***
Log to console with some dummy data
    [Arguments]    ${a1}  ${a2}
    ${random}=  FakerLibrary.Random Number    
    log to console  ${a1}, ${a2} and ${random}