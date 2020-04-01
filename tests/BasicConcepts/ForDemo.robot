*** Variables ***
${five}=  5
${last}=  last
&{dict}
*** Test Cases ***
For Example
    FOR    ${animal}    IN    cat    dog
        Log    ${animal}
        Log    2nd keyword
    END
    Log    Outside loop

Second For Example
    FOR    ${var}    IN    one    two    ${3}    four    ${five}
    ...    kuusi    7    eight    nine    ${last}
        Log    ${var}
    END

For with list Example
    ${ELEMENTS} =    Create List    first    second    third
    FOR    ${element}    IN    @{ELEMENTS}
        Start Element    ${element}
    END

Three loop variables for example
    FOR    ${index}    ${english}    ${finnish}    IN
    ...     1           cat           kissa
    ...     2           dog           koira
    ...     3           horse         hevonen
        # Add to dictionary    ${english}    ${finnish}    ${index}
        Log Many    ${english}    ${finnish}    ${index}    
    END

*** Keywords ***
Start Element
    [Arguments]    ${list}
    Log To Console    ${list}    

