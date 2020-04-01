*** Settings ***

*** Variables ***
${GREET}    Good Morning!
${NAME}    Rajesh
${PORT}    8080  
${LIST}    [1,2,3,4]  

*** Test Cases ***
Constants
    Log To Console    Hello

Variables    
    Log To Console    ${GREET}
    Log To Console    ${GREET}, ${NAME}!!
    Log To Console    ${PORT}  
    Log To Console    ${LIST}   