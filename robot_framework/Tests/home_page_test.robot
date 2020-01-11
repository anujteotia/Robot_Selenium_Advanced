*** Settings ***
Suite Teardown  Close All Browsers
Resource        ./settings.robot
Force Tags      HOME_PAGE

*** Test Cases ***
Validate Irdeto Home Page
    [Documentation]  This test case validates About Us and Careers in Irdeto Home Page
    Given I Open '${irdeto_url}' in '${browser}' Browser
    When Add Cookie  ${cookie_name}  ${cookie_val}
    And Reload Page
    Then Validate About Us In The Home Page
    And Validate Careers In The Home Page
