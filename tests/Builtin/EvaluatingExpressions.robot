*** Settings ***

*** Variables ***
${rc}
${status}
${output}
${x}    90
${y}    100
*** Test Cases ***
Test BuiltIn features
    # Test Fail
    Test with HTML
    
Test Evaluating Expressions
    Run if fail
    
Test boolean expressions
    Boolean args

*** Keywords ***
Test Fail
    Fail	Test not ready
    
Test with HTML
    Fail	*HTML*<h1>Test not ready</h1>			# Fails using HTML in the message.
    
Test fail and add tag
	Fail	Test not ready	not-ready		# Fails and adds 'not-ready' tag.
	
Test fail and remove tag
	Fail	OS not supported	-regression		# Removes tag 'regression'.
	
Test fail and remove all tags
	Fail	My message	tag	-t*	# Removes all tags starting with 't' except the newly added 'tag'.

Test os separator
    Run Keyword If	os.sep == '/'	Log	Not on Windows
    
Random evaluate
    ${random int} =	Evaluate	random.randint(0, 5)	modules=random

Return code evaluation
    Should Be True	${rc} < 10	Return code greater than 10	
    
Run if the test pass
    Run Keyword If	'${status}' == 'PASS'	Log	Passed
    
Run if fail
    Run Keyword If	'FAIL' in '''${output}'''	Log	Output contains FAIL
    
Boolean args
    Comment    this is a test comment for boolean args keyword.
    Should Be Equal	${x}	${y}	Custom error	values=True