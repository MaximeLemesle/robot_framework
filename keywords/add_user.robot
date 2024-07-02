*** Keywords ***
And the visitor adds a new user
    # Cliquer sur add
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button    5s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button
    
    # Cliquer sur user role
    Wait Until Element Is Visible    (//div[contains(@class, 'oxd-select-text-input')])[1]    5s
    Click Element    (//div[contains(@class, 'oxd-select-text-input')])[1]
    Click Element    (//div[@role='listbox']//div[@role='option'])[3]
    
    # Cliquer sur status
    Wait Until Element Is Visible    (//div[contains(@class, 'oxd-select-text-input')])[2]    5s
    Click Element    (//div[contains(@class, 'oxd-select-text-input')])[2]
    Click Element    (//div[@role='listbox']//div[@role='option'])[2]
    
    # Compléter employee name
    ${random_letter}=    Generate Random String    1    [LETTERS]
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    ${random_letter}
    Sleep    2s
    Press Keys    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    ARROW_DOWN
    Press Keys    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    ENTER
    
    # Générer un username et un mdp
    ${USERNAME}=    Generate Random Username
    ${PASSWORD}=    Generate Password
    
    # Ajouter le username
    Wait Until Element Is Visible    (//input[contains(@class, 'oxd-input oxd-input--active')])[2]    5s
    Wait Until Element Is Enabled    (//input[contains(@class, 'oxd-input oxd-input--active')])[2]    5s
    Clear Element Text    (//input[contains(@class, 'oxd-input oxd-input--active')])[2]
    Input Text    (//input[contains(@class, 'oxd-input oxd-input--active')])[2]    ${USERNAME}
    
    # Ajouter le password
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input    5s
    Wait Until Element Is Enabled    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input    5s
    Clear Element Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input    ${PASSWORD}
    
    # Confirmer le password
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input    5s
    Wait Until Element Is Enabled    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input    5s
    Clear Element Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input    ${PASSWORD}
    
    # Cliquer sur save
    Wait Until Element Is Visible    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]    5s
    Click Element    //button[contains(@class, 'oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space')]
    
    # Retour à la page admin
    Wait Until Element Is Visible    //a[@href='/web/index.php/admin/viewAdminModule']    5s
