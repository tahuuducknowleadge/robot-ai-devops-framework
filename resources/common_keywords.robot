*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DELAY_FAST}      1s
${DELAY_MEDIUM}    3s
${DELAY_SLOW}      5s

*** Keywords ***
Open Chrome Browser
    Open Browser    about:blank    chrome
    Maximize Browser Window

enterText
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Input Text    ${locator}    ${text}
    Sleep    ${DELAY_FAST}  

clickButton
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Click Element    ${locator}
    Sleep    ${DELAY_MEDIUM}

verifyCurrentUrl
    [Arguments]    ${expected_url}
    Location Should Be    ${expected_url}
    Sleep    ${DELAY_MEDIUM}

verifyTextDisplayed
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Element Should Be Visible    ${locator}
    Sleep    ${DELAY_MEDIUM}

checkCheckbox
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Select Checkbox    ${locator}

getUrl
    [Arguments]    ${url}
    Go To    ${url}
    Sleep    ${DELAY_MEDIUM}

Sleep After Test
    Sleep    3s