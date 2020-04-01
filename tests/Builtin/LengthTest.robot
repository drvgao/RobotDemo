*** Settings ***

*** Variables ***
&{dict}

*** Test Cases ***
Test length of string
    Get lenght of string
    
*** Keywords ***
Get lenght of string
	${length} =	Get Length	Hello, world!	
    Should Be Equal As Integers	${length}	13	
    @{list} =	Create List	Hello,	world!
    ${length} =	Get Length	${list}	
    Should Be Equal As Integers	${length}	2