*** Settings ***
Documentation  Command>Script or Global>Keyword command has higher prcedence
Resource  ../../Resources/GlobalVariables/scope.robot

*** Test Cases ***

*** Variables ***
@{LIST_VAR} =  This is an example of list variable  value#1  value#2
# ${GLOBAL_VAR1} =  From local file.  #overrides global value.

*** Test Cases ***
Create and log a variable
    ${var1} =  Set Variable  some value
    Log  ${var1}
    Log  ${LIST_VAR} printed global value?