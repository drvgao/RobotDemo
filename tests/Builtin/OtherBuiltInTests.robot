*** Settings ***

*** Variables ***
&{dict}
${dict2}  {'key': 'value', 'foo': 'bar'}
${rc}    -1
${no}    4
*** Test Cases ***
Test different ways to create RFW lists
    [Tags]    smoke
    Create list objects
    ${variables} =	Get Variables	
    Log Many    ${variables}    all variables
    Log Variables    level=INFO
    No Operation
    Pass Execution    Deprecated test.	deprecated	-regression  
    
Test pass execution
    Pass execution feature  
    
MISC Tests
    Should Contain	${dict2}	bar
    Should Be Equal As Integers	42	${42}	Error message
    Should Be Equal	${no}	4	response code matches.	values=False
    # Repeat kw for creating test data
    
*** Keywords ***
Create list objects
	@{list} =	Create List	a	b	c    'raj'    6.7
	${scalar} =	Create List	a	b	c
    ${ints} =	Create List	${1}	${2}	${3}    4
    
Pass execution feature
    Run Keyword If	${rc} < 0	Pass Execution	Negative values are cool.
    Pass Execution If	${rc} < 0	Negative values are cool.	
    
Repeat kw for creating test data
    Repeat Keyword    4 times    create player    
    
Create player
    Log    player created ${no}
    
Run kw on failure
    Run Keyword And Continue On Failure	Fail	This is a stupid example
    Log	This keyword is executed after failure	
