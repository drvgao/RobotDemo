*** Variables ***
${VARIABLE} =  default2
*** Keywords ***
One line documentation
    [Documentation]    One line documentation.
    No Operation

Multiline documentation
    [Documentation]    The first line creates the short doc.
    ...
    ...                This is the body of the documentation.
    ...                It is not shown in Libdoc outputs but only
    ...                the short doc is shown in logs.
    No Operation

Short documentation in multiple lines
    [Documentation]    If the short doc gets longer, it can span
    ...                multiple physical lines.
    ...
    ...                The body is separated from the short doc with
    ...                an empty line.
    No Operation
    
# tags    
Settings tags using separate setting
    [Tags]    my    fine    tags
    No Operation

Settings tags using documentation
    [Documentation]    I have documentation. And my documentation has tags.
    ...                Tags: my, fine, tags
    No Operation
    
# Detailed kw's
One Argument With Default Value
    [Arguments]    ${arg}=default value
    [Documentation]    This keyword takes 0-1 arguments
    Log    Got argument ${arg}

Two Arguments With Defaults
    [Arguments]    ${arg1}=default 1    ${arg2}=${VARIABLE}
    [Documentation]    This keyword takes 0-2 arguments
    Log    1st argument ${arg1}
    Log    2nd argument ${arg2}
    Log To Console    ${arg2} 
    Log To Console    ${arg2}    

One Required And One With Default
    [Arguments]    ${required}    ${optional}=default
    [Documentation]    This keyword takes 1-2 arguments
    Log    Required: ${required}
    Log    Optional: ${optional}

 Default Based On Earlier Argument
    [Arguments]    ${a}    ${b}=${a}    ${c}=${a} and ${b}
    Should Be Equal    ${a}    ${b}
    Should Be Equal    ${c}    ${a} and ${b}