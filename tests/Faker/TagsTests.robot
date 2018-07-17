*** Settings ***
Library    FakerLibrary
Force Tags  faker
Default Tags  fakeTest

*** Test Cases ***
Faker_profile
    [Tags]    smoke  regression
    ${address} =  FakerLibrary.address
    ${country} =  FakerLibrary.country
    ${email} =  FakerLibrary.email
    ${first_name} =  FakerLibrary.first_name
    ${last_name} =  FakerLibrary.last_name
    ${phone_number} =  FakerLibrary.phone_number
    ${profile} =  catenate
    ...             ${\n}=======================================
    ...             ${\n}first_name: ${first_name}
    ...             ${\n}last_name: ${last_name}
    ...             ${\n}address: ${address}
    ...             ${\n}country: ${country}
    ...             ${\n}email: ${email}
    ...             ${\n}phone_number: ${phone_number}
    ...             ${\n}=======================================
    log to console  ${profile}
    log to console  ${email}
    log to console  again: ${email}
    
Faker test2
    ${email}=  FakerLibrary.email
    log to console  ${email}    
    
Override default tag
    [Tags]    NONE
    ${email}=  FakerLibrary.email
    log to console  ${email}    