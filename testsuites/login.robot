*** Settings ***
Resource    ../resources/login_steps.robot
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
L_1
    Go To Login Page
    Click Session Button
    Input Email Field    anhtester@email.com
    Input Password Field   AnhTester@2023#
    Click Login Button
    Sleep    3s
    Verify Dashboard URL    ${ADMIN_URL}
    Sleep    3s
    Go To Logout Page

L_2
    Go To Login Page
    Input Email Field    customer2025@gmail.com
    Input Password Field   123456
    Click Login Button
    Sleep    3s
    Verify Dashboard URL    ${DASHBOARD_URL} 
    Sleep    3s
    Go To Logout Page

