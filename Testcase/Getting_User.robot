*** Settings ***
Library    RequestsLibrary
Resource    Getting_User_Support.robot
Documentation    Using this test we can test JsonPlaceholder application



*** Tasks ***
Get Users on JsonPlaceholder Application
    [Documentation]    Using this test we can test JsonPlaceholder application
    [Tags]    Test
    Payload with Valid Method, URI
    Payload with Invalid Method, Valid URI
    Payload with Valid Method without URI

