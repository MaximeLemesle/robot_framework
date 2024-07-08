*** Keywords ***
Given the visitor go to "${url}" on browser "${browser}"
    # Ouvrir le navigateur
    Open Browser    ${url}    ${browser}

    # Remplir username et le password
    Wait Until Element Is Visible    //input[@name='username']    10s
    Input Text    //input[@name='username']    Admin
    Input Text    //input[@name='password']    admin123

    # Cliquer sur login
    Click Element    //button[@type='submit']