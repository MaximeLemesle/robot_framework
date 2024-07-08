*** Keywords ***
When the visitor clicks on Admin page
    # Cliquer sur admin
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a    10s
    Click Element    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a
