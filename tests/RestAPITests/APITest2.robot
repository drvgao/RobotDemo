*** Settings ***				
Library    SeleniumLibrary
Library	Collections			
Library	RequestsLibrary			
*** Test Cases ***				
Check github username				
    Create Session	github	http://api.github.com	
	${resp}=	Get Request	github	/users/drvgao
	Should Be Equal As Strings	${resp.status_code}	200	
	${json} =    Set variable    ${resp.json()}
	Dictionary Should Contain Value	${resp.json()}	drvgao	
	Log    ${json}
	${git_url} =    Set Variable    ${json['html_url']}
	Open Browser    ${git_url}    chrome
	Close Browser