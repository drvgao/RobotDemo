*** Test Cases ***

*** Variables ***
&{Login}  name=robot    password=framework
&{USER 1}       name=Matti    address=xxx         phone=123
&{USER 2}       name=Teppo    address=yyy         phone=456
&{MANY}         first=1       second=${2}         ${3}=third
&{EVEN MORE}    &{MANY}       first=override      empty=
...             =empty        key\=here=value
*** Test Cases ***
List demo - Method #1
    Log to console  ${Login.name}
    Log to console  ${Login.name}
    Log to console  ${Login.password}
    Log to console  ${USER 1}
    Log to console  ${MANY}
    Log to console  ${EVEN MORE}

