*** Settings ***
Library    SeleniumLibrary
Library    String
Resource   ../keywords/login.robot
Resource   ../keywords/navigate_to_admin.robot
Resource   ../keywords/add_user.robot
Resource   ../keywords/search_user.robot
Resource   ../keywords/modify_user.robot
# Resource   ../keywords/delete_user.robot
Resource   ../ressources/generate_credentials.robot

*** Variables ***
${USER_ROLE}    ESS
${STATUS}       Enabled
${EMPLOYEE_NAME}   
${USERNAME}     
${PASSWORD}
${NEW_EMPLOYEE_NAME}   John Doe

*** Test Cases ***
My User Management Test
    [Tags]    my_user_test
    Given the visitor go to "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login" on browser "chrome"
    When the visitor clicks on Admin page
    And the visitor adds a new user
    And the visitor searches for the created user
    # And the visitor modifies the user information
    # And the visitor deletes the modified user
    # And the visitor logs out
    # Then the visitor verifies the login page
