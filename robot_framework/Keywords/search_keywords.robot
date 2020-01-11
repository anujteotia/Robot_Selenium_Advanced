*** Keywords ***
Validate Google Is Open
    [Documentation]  This keyword checks for google page
    Title Should Be    Google

User Enters Irdeto Text In Google
    [Documentation]  This keyword enter the Irdeto text in the search box
    Clear Element Text    ${search_text_box}
    Input Text    ${search_text_box}    ${search_term}
    Log To Console    Irdeto text has been entered successfully.

Search For Irdeto
    [Documentation]  Click on google search button
    Press Keys    ${search_text_box}     ENTER
    Log To Console    Clicked the search button successfully.

Validate First Search Result Is Irdeto
    [Documentation]  This keyword validates that the first search result is for Irdeto
    Element Should Contain    ${first_search_result}    ${search_result}    First search result is not for irdeto
    Log To Console    First result is for Irdeto
