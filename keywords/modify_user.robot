*** Keywords ***
And the visitor modifies the user information
    # Cliquer sur l'utilisateur dans la liste
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-table-row oxd-table-row--with-border')]//div[contains(@class, 'oxd-table-cell oxd-padding-cell') and text()='${USERNAME}']    5s
    Click Element    //div[contains(@class, 'oxd-table-row oxd-table-row--with-border')]//div[contains(@class, 'oxd-table-cell oxd-padding-cell') and text()='${USERNAME}']//following-sibling::div/button[2]

    # Modifier le nom de l'employé
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div    5s
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    ${NEW_EMPLOYEE_NAME}

    # Cliquer sur save
    Wait Until Element Is Visible    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]    5s
    Click Element    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]
