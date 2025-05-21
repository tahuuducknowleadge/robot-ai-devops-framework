*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common_keywords.robot

*** Test Cases ***
L_1
    Login With User    anhtester@email.com    AnhTester@2023#    https://cms.anhtester.com/dashboard    https://cms.anhtester.com/logout

L_2
    Login With User    customer2025@gmail.com    123456    https://cms.anhtester.com/dashboard    https://cms.anhtester.com/logout

*** Keywords ***
Login With User
    [Arguments]    ${username}    ${password}    ${expected_url}    ${logout_url}
    Open Chrome Browser
    common_keywords.getUrl    https://cms.anhtester.com/users/login
    common_keywords.clickButton    xpath=//button[@class="absolute-top-right bg-white shadow-lg btn btn-circle btn-icon mr-n3 mt-n3 set-session"]
    common_keywords.enterText    xpath=//input[@id="email"]    ${username}
    common_keywords.enterText    xpath=//input[@id="password"]    ${password}
    common_keywords.clickButton    xpath=//button[normalize-space()="Login"]
    Run Keyword If    "${expected_url}" != ""    verifyCurrentUrl    ${expected_url}
    Run Keyword If    "${logout_url}" != ""    getUrl    ${logout_url}
    Sleep After Test
    Close Browser
