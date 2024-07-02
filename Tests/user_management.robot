*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${USER_ROLE}  ESS
${STATUS}  Enabled
${EMPLOYEE_NAME} 
${USERNAME}  Robotframework
${PASSWORD}  secure password

*** Test Cases ***
My User Management Test
    [Tags]    my_user_test
    # Step 1 : aller sur le site https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    Given the visitor go to "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login" on browser "chrome"
    Wait Until Element Is Visible    xpath://a[@href='/web/index.php/admin/viewAdminModule']    10s

    # Step 2 : cliquer dans le menu sur la page « Admin »
    # Step 3 : Ajouter un utilisateur
    # Step 4 : Rechercher l’utilisateur précédemment créé
    # Step 5 : Modifier les informations de l’utilisateur recherché
    # Step 6 : Supprimer l’utilisateur modifié
    # Step 7 : Se déconnecter
    # Step 8 : Vérifier que nous sommes revenus sur la page de connexion


*** Keywords ***
the visitor go to "${url}" on browser "${browser}"
    Open Browser  ${url}  ${browser}
