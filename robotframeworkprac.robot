*** Settings ***
Documentation        There are many elements here you can user for RobotFramework practice!
Library              SeleniumLibrary
Resource             resources.robot


*** Test Cases ***
Robot Framework Tests
    Open Robot Framework Homepage
    Wait Until Page Contains Element    //*[@id="app"]/div[3]/div/div[2]/div/button
    Log To Console    Open the Docs dropdown.
    Log Title
    Click Button    //*[@id="app"]/div[3]/div/div[2]/div/button
    Sleep    2s
    Close Browser