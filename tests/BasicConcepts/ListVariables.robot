*** Test Cases ***

*** Variables ***
@{LIST_VAR} =  This is an example of list variable  robot  framework

*** Test Cases ***
List demo - Method #1
    Log to console  List item @index 1 ${LIST_VAR}[1]
    Log to console  List Indexing ${LIST_VAR}[0]
    Log to console  List Slicing ${LIST_VAR}[0:3]
    Log to console  List stride of #3 ${LIST_VAR}[::3]
    Log to console  List stride of #3 ${LIST_VAR}[1:]
    
    
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