*** Test Cases ***

*** Variables ***
@{LIST_VAR} =  This is an example of list variable  value#1  value#2

*** Test Cases ***
Variable demo
    Log  @{LIST_VAR}[0]
    Log  @{LIST_VAR}[1]
    Log  @{LIST_VAR}[2]
    
Variable demo2
    @{list_var2} =  Set Variable  Item 1  Item 2  Item 3
    Log  @{list_var2}[0]
    Log  @{list_var2}[1]
    Log  @{list_var2}[2]
    
Variable demo3
    @{list_var2} =  Create List  Item 1  Item 2  Item 3
    Log  @{list_var2}[0]
    Log  @{list_var2}[1]
    Log  @{list_var2}[2]