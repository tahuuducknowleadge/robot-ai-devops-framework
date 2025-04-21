*** Settings ***
Library    SeleniumLibrary
Library    ../keywords/excel_keywords.py
Resource    ../resources/common_keywords.robot

Suite Setup     Open Chrome Browser

*** Test Cases ***
L_1    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_1    Login
L_2    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_2    Login
L_3    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_3    Login
L_4    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_4    Login
L_5    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_5    Login
L_6    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_6    Login
L_7    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_7    Login
L_8    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_8    Login
    