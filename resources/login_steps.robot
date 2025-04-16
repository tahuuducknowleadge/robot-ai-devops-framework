*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}        https://cms.anhtester.com/users/login
${LOGOUT_URL}    https://cms.anhtester.com/logout
${DASHBOARD_URL}    https://cms.anhtester.com/dashboard
${ADMIN_URL}    https://cms.anhtester.com/admin
${DASHBOARD_SELLER_URL}    https://cms.anhtester.com/seller/dashboard	

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window

Go To Login Page
    Go To    ${LOGIN_URL}

Go To Logout Page
    Go To    ${LOGOUT_URL}

Click Session Button
    Click Button    xpath=//button[@class='absolute-top-right bg-white shadow-lg btn btn-circle btn-icon mr-n3 mt-n3 set-session']

Input Email Field
    [Arguments]    ${email}
    Input Text    xpath=//input[@id='email']    ${email}

Input Password Field
    [Arguments]    ${password}
    Input Text    xpath=//input[@id='password']    ${password}

Click Login Button
    Click Button    xpath=//button[normalize-space()='Login']

Verify Dashboard URL
     [Arguments]    ${expected_url}
    Location Should Be    ${expected_url}

Go To Login Page Again
    Go To    ${LOGIN_URL}

Click Logout Button
    Click Button    xpath=//a[@class='text-reset d-inline-block opacity-60 py-2'][normalize-space()='Logout']

Verify Element Text
    [Arguments]    ${locator}    ${expected_text}
    Element Text Should Be    ${locator}    ${expected_text}

Sleep After Test
    Sleep    3s

