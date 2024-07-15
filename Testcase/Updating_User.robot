*** Settings ***
Library    RequestsLibrary
Resource    Updating_User_Support.robot
Documentation    Using this suite we can test update operation


*** Test Cases ***
Update Users on JsonPlaceholder
    [Tags]    Test
    [Documentation]    Using this test we can test update users
    Payload With Valid Method, URI
    Payload With valid Method, Without URI
    Payload with Post Method, Valid URI
    Invalid Payload as well as Invalid Method, URI
    


