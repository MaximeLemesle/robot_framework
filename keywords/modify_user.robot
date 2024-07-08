*** Keywords ***
And the visitor modifies the user information

    # Attendre
    Wait Until Element Is Visible     //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    10s

    # Vider l'input
    Clear Element Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input
    
    # Remplacer le nom
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input    ${NEW_EMPLOYEE_NAME}

    # Cliquer sur save
    Click Element    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-toast-content--success')]    10s