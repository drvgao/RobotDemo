*** Settings ***

*** Variables ***
&{dict}

*** Test Cases ***
Test different ways to create RFW lists
    [Tags]    smoke
    Create list objects
    ${variables} =	Get Variables	
    Log Many    ${variables}    all variables
    Log Variables    level=INFO
    
*** Keywords ***
Create list objects
	@{list} =	Create List	a	b	c    'raj'    6.7
	${scalar} =	Create List	a	b	c
    ${ints} =	Create List	${1}	${2}	${3}    4
    