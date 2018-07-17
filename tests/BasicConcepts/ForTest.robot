*** Test Cases ***
# http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#for-loops
Example 1
    :FOR    ${animal}    IN    cat    dog
    \    Log    example1 ${animal}
    \    Log    2nd keyword
    Log    Outside loop
    
Only upper limit
    [Documentation]    Loops over values from 0 to 9
    :FOR    ${index}    IN RANGE    10
    \    Log to console    ${index}

Start and end
    [Documentation]  Loops over values from 1 to 10
    :FOR    ${index}    IN RANGE    1    11
    \    Log to console    ${index}

Also step given
    [Documentation]  Loops over values 5, 15, and 25
    :FOR    ${index}    IN RANGE    5    26    10
    \    Log to console    ${index}

Negative step
    [Documentation]  Loops over values 13, 3, and -7
    :FOR    ${index}    IN RANGE    13    -13    -10
    \    Log to console    ${index}

Float parameters
    [Documentation]  Loops over values 3.14, 4.34, and 5.54
    :FOR    ${index}    IN RANGE    3.14    6.09    1.2
    \    Log    ${index}

For-Loop-Exiting
    @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
    :FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log to console    ${ELEMENT}
    \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
    \    Log    Do more actions here ...

Run-Keyword-And-Ignore-Error
    @{CAPTAINS}    Create List    Picard    Kirk    Archer
    Run Keyword And Ignore Error    Should Be Empty    ${CAPTAINS}
    Log to console    Reached this point despite of error
    
Repeat a keyword many times
    Repeat Keyword  5  A repeatable keyword
    Repeat Keyword  2 times  A repeatable keyword
    Repeat Keyword  2 x  A repeatable keyword
    Repeat Keyword  10 s  A repeatable keyword  #repeats for 10s
    
*** Keywords ***
A repeatable keyword
    Log  Repeat keyword example    