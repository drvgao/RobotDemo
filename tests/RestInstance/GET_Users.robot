*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com

*** Variables ***
${json}         { "id": 11, "name": "Gil Alexander" }
&{dict}         name=Julie Langford


*** Test Cases ***
GET an existing user, notice how the schema gets more accurate
    GET         /users/1                  # this creates a new instance
    Output schema   response body
    Object      response body             # values are fully optional
    Integer     response body id          1
    String      response body name        Leanne Graham
    [Teardown]  Output schema             # note the updated response schema

GET EXISTING USERS
    GET    /users/4
    Integer    response body id    4