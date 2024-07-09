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
    BuiltIn.Sleep    10

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
    Press Keys    xpath=//input[@placeholder='First Name']    COMMAND+A    BACKSPACE
    Click Element    xpath=//input[@placeholder='Last Name']
    Press Keys    xpath=//input[@placeholder='Last Name']    COMMAND+A    BACKSPACE
    # Modifie les informations
    Input Text    xpath=//input[@placeholder='First Name']    ${new_first_name}
    Input Text    xpath=//input[@placeholder='Last Name']    ${new_last_name}
    Click Button    xpath=//button[@type='submit']
    BuiltIn.Sleep    10
    Wait Until Page Contains    Successfully Update
    BuiltIn.Sleep    10
    Logout From OrangeHRM
    BuiltIn.Sleep    10
    Close Browser

Delete Employee
    [Arguments]    ${employee_name}
    Open Browser To OrangeHRM
    Login To OrangeHRM    ${USERNAME}    ${PASSWORD}
    Click Element    xpath=//li[2]
    BuiltIn.Sleep    10
    # Recherche l'employé par nom
    Input Text    xpath=//div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input   ${employee_name}
    Click Button    xpath=//button[@type='submit']
    BuiltIn.Sleep    10
    # Sélectionne l'employé trouvé dans la liste des résultats
    # Clic sur l'icône de suppression (poubelle) pour l'employé spécifique
    Click Element    xpath=//i[contains(@class, 'bi-trash')]
    
    # Confirme la suppression
    Click Button    xpath=//button[@class='oxd-button oxd-button--medium oxd-button--label-danger orangehrm-button-margin']
    Wait Until Page Contains    No Records Found
    Logout From OrangeHRM
    BuiltIn.Sleep    10
    Close Browser