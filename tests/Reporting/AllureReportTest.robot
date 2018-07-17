*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
# Library  AllureReportLibrary  C:\\Temp
Resource  ../../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../../Resources/Amazon.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    # use control-b on each keyword to see lower level keywords
    Given user is not logged in
    When user searches for products
    Then search results contains relevant products