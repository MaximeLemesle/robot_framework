*** Keywords ***
And the visitor modifies the user information
    Click Element    //div[contains(@class, 'oxd-table-row oxd-table-row--with-border')]//div[contains(@class, 'oxd-table-cell oxd-padding-cell')][contains(., '${USERNAME}')]/following-sibling::div/button[2]
    Wait Until Element Is Visible    //h6[contains(@class, 'oxd-text oxd-text--h6 orangehrm-main-title')]    10s
    Input Text    //input[contains(@class, 'oxd-input oxd-input--active')]    ${EMPLOYEE_NAME}_Modified
    Click Element    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-toast-content--success')]    10s
