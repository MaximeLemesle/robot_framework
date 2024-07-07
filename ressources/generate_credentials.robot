*** Keywords ***
Generate Random Username
    ${username}=    Generate Random String    8    [LETTERS][NUMBERS]
    [Return]    ${username}

Generate Password
    ${random_password}=    Generate Random String    11    [LETTERS][NUMBERS]
    ${random_digit}=    Generate Random String    1    [NUMBERS]
    ${password}=    Set Variable    ${random_password}${random_digit}
    [Return]    ${password}