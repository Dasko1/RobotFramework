*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Resource          resources.robot

*** Test Cases ***
Valid Login
    Create Java Folder