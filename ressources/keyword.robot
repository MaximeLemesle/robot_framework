*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}    chrome
${USERNAME}    Admin
${PASSWORD}    admin123

*** Keywords ***
Open Browser To OrangeHRM
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://input[@name='username']    10

Login To OrangeHRM
    [Arguments]    ${username}    ${password}
    Input Text    xpath://input[@name='username']    ${username}
    Input Text    xpath://input[@name='password']    ${password}
    Click Button    xpath://button[@type='submit']
    Wait Until Page Contains Element    xpath://a[@class='oxd-main-menu-item']    10

Logout From OrangeHRM
    Click Button    xpath://i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']
    Click Link    xpath://a[text()='Logout']
    Wait Until Element Is Visible    xpath://button[@type='submit']    10

Close Browser
    Close All Browsers