import json

# Đường dẫn file JSON đầu vào
json_file = '../data/login_data.json'

# Đường dẫn file Robot Framework đầu ra
robot_file = '../testsuites/login_tests_data_json.robot'

# Đọc dữ liệu JSON
with open(json_file, 'r', encoding='utf-8') as f:
    data = json.load(f)

# Tạo file .robot
with open(robot_file, 'w', encoding='utf-8') as f:
    # Ghi phần Settings
    f.write('*** Settings ***\n')
    f.write('Library    SeleniumLibrary\n')
    f.write('Resource    ../resources/common_keywords.robot\n\n')

    # Ghi phần Test Cases
    f.write('*** Test Cases ***\n')
    for item in data:
        name = item.get('test_case_name', 'Test_Case')
        username = item['username']
        password = item['password']
        expected_url = item.get('expected_url', '')
        logout_url = item.get('logout_url', '')

        f.write(f'{name}\n')
        f.write(f'    Login With User    {username}    {password}    {expected_url}    {logout_url}\n\n')

    # Ghi phần Keywords
    f.write('*** Keywords ***\n')
    f.write('Login With User\n')
    f.write('    [Arguments]    ${username}    ${password}    ${expected_url}    ${logout_url}\n')
    f.write('    Open Chrome Browser\n')
    f.write('    common_keywords.getUrl    https://cms.anhtester.com/users/login\n')
    f.write('    common_keywords.clickButton    xpath=//button[@class="absolute-top-right bg-white shadow-lg btn btn-circle btn-icon mr-n3 mt-n3 set-session"]\n')
    f.write('    common_keywords.enterText    xpath=//input[@id="email"]    ${username}\n')
    f.write('    common_keywords.enterText    xpath=//input[@id="password"]    ${password}\n')
    f.write('    common_keywords.clickButton    xpath=//button[normalize-space()="Login"]\n')
    f.write('    Run Keyword If    "${expected_url}" != ""    verifyCurrentUrl    ${expected_url}\n')
    f.write('    Run Keyword If    "${logout_url}" != ""    getUrl    ${logout_url}\n')
    f.write('    Sleep After Test\n')
    f.write('    Close Browser\n')
