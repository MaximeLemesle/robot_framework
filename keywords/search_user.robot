*** Settings ***
Resource    ../ressources/variables.resource

*** Keywords ***
And the visitor searches for the created user
    # Attendre que la recherche s'affiche
    Wait Until Element Is Visible    //div[@class='oxd-table-filter']    10s

    # Rechercher l'utilisateur
    Wait Until Element Is Visible    //label[contains(text(), 'Username')]/following::input[1]    10s
    Input Text    //label[contains(text(), 'Username')]/following::input[1]    ${USERNAME}
    Click Element    //button[contains(@class, 'oxd-button--medium oxd-button--secondary') and @type='submit']

    # Sélectionner l'utilisateur
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div[1]    10s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div[1]/div/div[6]/div/button[2]
    
    # Attendre que le formulaire de modification s'affiche
    Wait Until Element Is Visible    //div[@class='orangehrm-card-container']//h6    10s
