*** Settings ***
Library    SeleniumLibrary
Library    ../keywords/excel_keywords.py
Resource    ../resources/common_keywords.robot

Suite Setup     Open Chrome Browser

*** Test Cases ***
R_1    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_1    Register