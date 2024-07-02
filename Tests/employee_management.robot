*** Settings ***
Resource    ../keywords.robot

*** Keywords ***
Add New Employee
    [Arguments]    ${first_name}    ${last_name}
    Open Browser To OrangeHRM
    Login To OrangeHRM    ${USERNAME}    ${PASSWORD}
    Click Element    xpath://span[text()='PIM']
    Click Button    xpath://button[text()='Add']
    Input Text    xpath://input[@name='firstName']    ${first_name}
    Input Text    xpath://input[@name='lastName']    ${last_name}
    Click Button    xpath://input[@name='btnSave']
    Wait Until Page Contains    Personal Details
    Logout From OrangeHRM
    Close Browser

Search Employee
    [Arguments]    ${employee_name}
    Open Browser To OrangeHRM
    Login To OrangeHRM    ${USERNAME}    ${PASSWORD}
    Click Element    xpath://span[text()='PIM']
    Input Text    xpath://input[@name='empsearch[employee_name][empName]']    ${employee_name}
    Click Button    xpath://input[@name='searchBtn']
    Wait Until Page Contains    ${employee_name}
    Logout From OrangeHRM
    Close Browser

Modify Employee
    [Arguments]    ${employee_name}    ${new_first_name}
    Open Browser To OrangeHRM
    Login To OrangeHRM    ${USERNAME}    ${PASSWORD}
    Click Element    xpath://span[text()='PIM']
    Input Text    xpath://input[@name='empsearch[employee_name][empName]']    ${employee_name}
    Click Button    xpath://input[@name='searchBtn']
    Click Element    xpath://a[text()='${employee_name}']
    Click Button    xpath://input[@name='btnSave']
    Input Text    xpath://input[@name='personal_txtEmpFirstName']    ${new_first_name}
    Click Button    xpath://input[@name='btnSave']
    Wait Until Page Contains    Successfully Saved
    Logout From OrangeHRM
    Close Browser

Delete Employee
    [Arguments]    ${employee_name}
    Open Browser To OrangeHRM
    Login To OrangeHRM    ${USERNAME}    ${PASSWORD}
    Click Element    xpath://span[text()='PIM']
    Input Text    xpath://input[@name='empsearch[employee_name][empName]']    ${employee_name}
    Click Button    xpath://input[@name='searchBtn']
    Click Element    xpath://input[@name='chkSelectRow[]']
    Click Button    xpath://input[@name='btnDelete']
    Click Button    xpath://input[@name='dialogDeleteBtn']
    Wait Until Page Contains    Successfully Deleted
    Logout From OrangeHRM
    Close Browser