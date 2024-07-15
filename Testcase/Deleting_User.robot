*** Settings ***
Resource    Deleting_User_Support.robot
Documentation    Using this suite we can test delete operation

*** Test Cases ***
Delete Users on JsonPlaceHolder
    [Tags]    Test
    [Documentation]    Using This test we can test the delete operation
    Payload With valid Method, URI
    Payload With Invalid Method, Valid URI
    Payload With Valid Method Without URI
