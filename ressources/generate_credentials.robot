*** Keywords ***
Generate Random Username
    ${username}=    Generate Random String    8    [LETTERS][NUMBERS]
    [Return]    ${username}

Generate Password
    ${password}=    Generate Random String    12    [LETTERS][NUMBERS]
    [Return]    ${password}
