*** Settings ***
Documentation  Variable files contain variables that can be used in the test data
Variables    ../../Resources/VariablesDemo.py

*** Variables ***

*** Test Cases ***
Create and log a variable
    Log  Variables from file.
    Log To Console    ${VARIABLE}  
    Log To Console    Integer value is ${INTEGER}      