*** Settings ***
Library            Process
Library            BuiltIn

*** Test Cases ***
Example of running a python script
    ${result} =     Run Process    python    "C:/Users/dadaskalopoulos/Python-Scripts/adding.py"
    Log    ${result}