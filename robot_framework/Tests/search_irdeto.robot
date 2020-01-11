*** Settings ***
Suite Teardown  Close All Browsers
Resource        ./settings.robot
Force Tags      SEARCH_IRDETO

*** Test Cases ***
Open Google and Search Irdeto
    [Documentation]  This test case searches for Irdeto in Google
    Given I Open '${google_url}' in '${browser}' Browser
    Then Validate Google Is Open
    When User Enters Irdeto Text In Google
    And Search For Irdeto
    Then Validate First Search Result Is Irdeto