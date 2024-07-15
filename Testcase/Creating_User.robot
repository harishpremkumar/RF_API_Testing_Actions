*** Settings ***
Library    RequestsLibrary
Resource    Creating_User_Support.robot
Documentation    Using this suite we can test create operation

*** Test Cases ***
Create Users on JsonPlaceHolder
    [Tags]    Test
    [Documentation]    Using this suite we can test create operation
    Payload with valid Method, URI
    Payload With Delete Method, Valid URI
    Payload With valid Method, Without URI
    

