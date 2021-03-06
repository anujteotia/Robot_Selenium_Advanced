*** Settings ***
Library     SeleniumLibrary    screenshot_root_directory=${OUTPUTDIR}/Screenshots/

*** Keywords ***
I Open '${url}' in '${browser}' Browser
    [Documentation]  This keyword opens given url in the browser of the choice.
    ${webdriver_exe}    Set Executable Path For Different Platforms    ${browser}
    Create Webdriver    ${browser}    executable_path=${webdriver_exe}
    Maximize Browser Window
    Go To    ${url}
    Set Browser Implicit Wait    ${timeout}
    Set Selenium Speed	${set_selenium_speed}

Set Web Driver Executable Path For Windows
    [Documentation]  This keyword sets the path for driver executable
    [Arguments]   ${browser}
    ${webdriver_exe}    Run Keyword If   '${browser}'.lower() == 'chrome'    Set Variable   ${win_chrome_driver_exe}
    ...    ELSE IF    '${browser}'.lower() == 'firefox'    Set Variable    ${win_firefox_driver_exe}
    Should Not Be Empty     ${webdriver_exe}    msg=Unable to set the path for webdriver executable.
    [Return]  ${webdriver_exe}

Set Web Driver Executable Path For MacOS
    [Documentation]  This keyword sets the path for driver executable
    [Arguments]   ${browser}
    ${webdriver_exe}    Run Keyword If   '${browser}'.lower() == 'chrome'    Set Variable   ${mac_chrome_driver_exe}
    ...    ELSE IF    '${browser}'.lower() == 'firefox'    Set Variable    ${mac_firefox_driver_exe}
    Should Not Be Empty    ${webdriver_exe}    msg=Unable to set the path for webdriver executable.
    [Return]  ${webdriver_exe}

Set Executable Path For Different Platforms
    [Documentation]  This keyword sets the driver executable according to the platform i.e. Windows/MacOS
    [Arguments]    ${browser}=chrome
    ${system}  Evaluate    platform.system()    platform
    ${webdriver_exe}    Run Keyword If    '${system}'.lower() == 'windows'  Set Web Driver Executable Path For Windows    ${browser}
    ...   ELSE IF  '${system}'.lower() == 'darwin'  Set Web Driver Executable Path For MacOS    ${browser}
    Should Not Be Empty   ${webdriver_exe}    msg=Unable to set the path for webdriver executable.
    [Return]   ${webdriver_exe}
