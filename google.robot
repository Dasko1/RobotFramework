*** Settings ***
Documentation       Explore Google Homepage
Library             SeleniumLibrary
Resource            resources.robot

*** Test Cases ***
Go To Google Homepage Test
    Open Google Homepage
    Input Text    ${Field}    Robot Framework
    Press Keys     ${None}    ENTER
    Log To Console   Search for Robot Framework
    Wait Until Page Contains    Robot Framework Demo
    Sleep    2s
    Close All Browsers
