*** Keywords ***
Validate About Us In The Home Page
    [Documentation]  This keyword valdates the links in the home page
    Wait Until Page Contains Element    ${about_us}    timeout=${timeout}    error=About Us is not present in the irdeto home page
    Log To Console    About Us is present in the Irdeto Home Page

Validate Careers In The Home Page
    [Documentation]  This keyword valdates the links in the home page
    Wait Until Page Contains Element    ${careers}    timeout=${timeout}    error=Careers Option is not present in the irdeto home page
    Log To Console    Careers is present in the Irdeto Home Page


