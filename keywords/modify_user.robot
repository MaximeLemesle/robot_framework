*** Keywords ***
And the visitor modifies the user information

    # Modifier le nom de l'employé
    Clear Element Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    ${NEW_EMPLOYEE_NAME}
    Sleep     10s
    # Cliquer sur save
    Click Element    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-toast-content--success')]    10s