*** Settings ***
Library    REST


*** Test Cases ***
GET EXISTING USERS
    GET    /users/4
    
 