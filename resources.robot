*** Settings ***
Documentation  A resource file with reusable keywords & variables.
Library        SeleniumLibrary
Library        ${CURDIR}/Libraries/Customlibrary.py
Library        ${CURDIR}/Libraries/SampleKeywordsLibrary.java
Library        ${CURDIR}/Libraries/MyCalculatorApplication.py
Library        BuiltIn


*** Variables ***
${URL}          http://www.google.com
${URL_RF}       https://www.robotframework.org
${Browser}      chrome
${Field}        APjFqb

*** Keywords ***
Open Google Homepage
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Wait Until Page Contains    Gmail
    Page Should Contain    Images
    Page Should Contain Element   ${Field}
    Sleep    2s

Open Robot Framework Homepage
    Open Browser    ${URL_RF}    ${Browser}
    Maximize Browser Window
    Wait Until Page Contains Element    //button[@name='go-to-Development']
    Page Should Contain    generic open source automation framework
    Page Should Contain Element    //button[@class='flex middle px-small font-title type-uppercase line-height-body dropdown-button color-white']//*[name()='svg']//*[name()='path' and contains(@d,'M15.41 7.4')]
    Sleep  2s
    
Sum two numbers
    sum numbers    ${number1}    ${number2}
    Log to console    sum numbers

Create Java Folder
    create_folder_java

Verify app calculation 
    [Arguments]    ${term}    ${expected}
    Log To Console    Executing basictest.robot
    Log To Console    Calculating: ${term}
    ${actual}    Do Math    ${term}
    Log To Console    Calculated Result: ${actual}
    Should Be Equal As Numbers    ${actual}    ${expected}