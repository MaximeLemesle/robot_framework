*** Settings ***
Resource    ../ressources/steps/employee_steps.robot

*** Test Cases ***
Add New Employee
    [Tags]    add_employee
    [Documentation]  Test d'ajout d'un nouvel employé
    Add New Employee    John    Doe

Modify Employee Information
    [Tags]    modify_employee
    [Documentation]  Test de modification des informations d'un employé
    Modify Employee Information    John Doe    Jonathan    Doe

Delete Employee
    [Tags]    delete_employee
    [Documentation]  Test de suppression d'un employé
    Delete Employee    Jonathan Doe