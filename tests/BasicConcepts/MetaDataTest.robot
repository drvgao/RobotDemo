*** Settings ***
Library  ../../Resources/CustomLib/CustomLib.py
Metadata  Version  1.0
Metadata  More Info  follow the link http://robotframework.org
Metadata  Executed At  ${Brwoser}    

*** Test Cases ***
# http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#for-loops
Testing with custom library
    Do Some Custom Thing
    
*** Keywords ***
Do Some Custom Thing
    Do Something Special