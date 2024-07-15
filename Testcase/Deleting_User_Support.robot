*** Settings ***
Variables    ../Data/Test_Data.py
Variables    ../Data/url.py
Library    RequestsLibrary

*** Keywords ***
Payload With valid Method, URI
    Verify a The User should be deleted and status should be 200

Payload With Invalid Method, Valid URI
    Verify A User Shouldn't be deleted and status should be 404

Payload With Valid Method Without URI
    Verify The User Shouldn't be deleted and status should be 404

Verify a The User should be deleted and status should be 200
    Create Session    baseurl    ${API_BaseUrl}
    ${headers}    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8 
    ${Del_Req}    Delete Request    baseurl    /posts/1    headers=${headers}
    Status Should Be    200    ${Del_Req}

Verify A User Shouldn't be deleted and status should be 404
    Create Session    baseurl    ${API_BaseUrl}
    ${headers}    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8 
    ${Del_Req}    Post Request    baseurl    /posts/1    headers=${headers}
    Status Should Be    404    ${Del_Req}    

Verify The User Shouldn't be deleted and status should be 404
    Create Session    baseurl    ${API_BaseUrl}
    ${headers}    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8 
    ${Del_Req}    Post Request    baseurl    /posts/1    headers=${headers}
    Status Should Be    404    ${Del_Req}
     