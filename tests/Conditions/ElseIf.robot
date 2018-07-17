*** Variables ***
${VALUE} =  100

*** Test Cases ***
Testing a TRUE if statement
    Run Keyword If  ${VALUE} > 50  keyword 1
    
Testing a false if statement
    Run Keyword If  ${VALUE} > 150  keyword 1    
    
Testing an if/else statement
    Run Keyword If  ${VALUE} > 150  keyword 1    
    ...    ELSE   keyword 2
    
Testing an IF/ELSE IF/ELSE statement
    Run Keyword If  ${VALUE} > 150  keyword 1
    ...    ELSE IF  ${VALUE} == 10  keyword 2
    ...    ELSE  keyword 3
    
    
*** Keywords ***
keyword 1
    log  keyword 1 printed
    
keyword 2
    log  keyword 2 printed
    
keyword 3
    log  keyword 3 printed            