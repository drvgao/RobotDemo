*** Test Cases ***

*** Variables ***
@{LIST_VAR} =  This is an example of list variable  value#1  value#2

*** Test Cases ***
List demo - Method #1
    Comment  this is a comment @{LIST_VAR}[0]
    Log to console  @{LIST_VAR}[0]
    Log to console  @{LIST_VAR}[1]
    Log to console  @{LIST_VAR}[2]
    
List demo - Method #2
    @{list_var2} =  Set Variable  Item 1  Item 2  Item 3
    Log  @{list_var2}[0]
    Log  @{list_var2}[1]
    Log  @{list_var2}[2]
    
List demo - Method #3
    @{list_var2} =  Create List  Item 1  Item 2  Item 3
    Log  @{list_var2}[0]
    Log  @{list_var2}[1]
    Log  @{list_var2}[2]