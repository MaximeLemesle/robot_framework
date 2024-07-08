*** Keywords ***
And the visitor modifies the user information

    # Attendre
    Wait Until Element Is Visible     //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input    10s

    # Vider le champ et changer le nom (ne fonctionne pas ni avec ctrl+a et backspace)
    Clear Element Text   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input
    # Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input    ${NEW_EMPLOYEE_NAME}

    # Cliquer sur save
    Click Element    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-toast-content--success')]    10s