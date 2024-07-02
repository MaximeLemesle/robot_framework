*** Keywords ***
And the visitor searches for the created user
    # Rechercher l'utilisateur
    Wait Until Element Is Visible    //input[contains(@class, 'oxd-input oxd-input--active')]    5s
    Input Text    //input[contains(@class, 'oxd-input oxd-input--active')]    ${USERNAME}
    Click Element    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]
    Wait Until Element Is Visible    //div[contains(@class, 'oxd-table-row oxd-table-row--with-border')]//div[contains(@class, 'oxd-table-cell oxd-padding-cell') and text()='${USERNAME}']    5s
    
    # Cliquer sur l'icon modif
    Click Element    //div[contains(@class, 'oxd-table-row oxd-table-row--with-border')]//div[contains(@class, 'oxd-table-cell oxd-padding-cell') and text()='${USERNAME}']//following-sibling::div/button[2]
    Wait Until Element Is Visible    //div[@class='orangehrm-card-container']//h6    5s
