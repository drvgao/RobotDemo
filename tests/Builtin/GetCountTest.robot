*** Settings ***

*** Variables ***
${var}

*** Test Cases ***
Test different ways to create RFW lists
    Create list objects
    
*** Keywords ***
Create list objects
    [Documentation]    exit for loop after a,b & c.
	@{list} =	Create List	a	b	c    raj    exit
	FOR    ${value}    IN    @{list}
		Exit For Loop If	'${value}' == 'c'	
	    Log    ${value}
    END