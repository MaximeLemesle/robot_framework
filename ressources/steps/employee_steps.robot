*** Settings ***
Resource    ../keyword.robot

*** Keywords ***
Add New Employee
    [Arguments]    ${first_name}    ${last_name}
    Open Browser To OrangeHRM
    Login To OrangeHRM    ${USERNAME}    ${PASSWORD}
    Click Element    xpath=//li[2]
    BuiltIn.Sleep   10
    Click Button    xpath=//div[1]/div[2]/div[2]/div/div[2]/div[1]/button
    BuiltIn.Sleep   10
    Input Text    xpath=//div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[1]/div[2]/input    ${first_name}
    Input Text    xpath=//div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[1]/div/div/div[2]/div[3]/div[2]/input    ${last_name}
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Personal Details
    Logout From OrangeHRM
    Close Browser


Modify Employee Information
    [Arguments]    ${employee_name}    ${new_first_name}    ${new_last_name}
    Open Browser To OrangeHRM
    Login To OrangeHRM    ${USERNAME}    ${PASSWORD}
    Click Element    xpath=//li[2]
    BuiltIn.Sleep    10
    # Recherche l'employé par nom
    Input Text    xpath=//div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input   ${employee_name}
    Click Button    xpath=//button[@type='submit']
    BuiltIn.Sleep    5
    # Sélectionne l'employé trouvé dans la liste des résultats
    # Clic sur l'icône d'édition (crayon) pour l'employé spécifique
    Click Element    xpath=//i[contains(@class, 'bi-pencil-fill')]

    BuiltIn.Sleep    5
    #Supprime les informations
    Click Element    xpath=//input[@placeholder='First Name']
    Press Keys    xpath=//input[@placeholder='First Name']    CTRL+A    BACKSPACE
    Click Element    xpath=//input[@placeholder='Last Name']
    Press Keys    xpath=//input[@placeholder='Last Name']    CTRL+A    BACKSPACE
    # Modifie les informations
    Input Text    xpath=//input[@placeholder='First Name']    ${new_first_name}
    Input Text    xpath=//input[@placeholder='Last Name']    ${new_last_name}
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Successfully Saved
    BuiltIn.Sleep    10
    Logout From OrangeHRM
    Close Browser