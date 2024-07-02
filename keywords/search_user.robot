*** Keywords ***
And the visitor searches for the created user
    # Cliquer sur modifier
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-table-row oxd-table-row--with-border')]//div[contains(@class, 'oxd-table-cell oxd-padding-cell')][contains(., '${USERNAME}')]    10s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div[1]/div/div[6]/div/button[2]
    
    # Modifier le nom de l'employé
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/h6    10s
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    ${EMPLOYEE_NAME}_Modified
    
    # Cliquer sur save
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]    10s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]
    
    # Attendre que la validatrion
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-toast-content--success')]    10s
