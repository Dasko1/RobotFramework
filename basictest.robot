*** Settings ***
Resource        resources.robot

*** Test Cases ***
Test some basics of my calculator application
    Log To Console    Starting test
    Verify app calculation    1 + 1    2
