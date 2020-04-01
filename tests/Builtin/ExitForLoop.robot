*** Settings ***

*** Variables ***

*** Test Cases ***
Test count of an item
    Get Count of item
    
*** Keywords ***
Get Count of item
    [Documentation]    exit for loop after a,b & c.
	${list} =	Create List	a	b	a    a    a
	${count} =	Get Count	aa this is a sample string    a
	Log    ${count}
