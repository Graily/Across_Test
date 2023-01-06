*** Settings ***
Documentation  AcrossTest
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/LoginPage.robot
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/HomePage.robot
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/McsProjectsSection.robot
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/McsProjectsPage.robot

Test Setup    AutoLogin

*** Variables ***
${text_button}    Продажа ГП

*** Test Cases ***
Make new Project
    [Documentation]    Making new project for tests
    [Tags]    Projects

    Go to Section    ${projects}
    Add Project
    Fill in fields
    open filters
    add filter
    close filters
    sleep    5s

LogOut
    [Documentation]    LogOutTest
    [Tags]    Login

    log to console    ${text_button}
    get element attribute    ${Text_Of_Button}    @text
    System Section Assert    ${text_button}

Profile Section Test
    [Tags]    Profile

    Go to Profile Menu
    Change Culture    ${USAtoRuCulture}
    Safe Profile
    [Teardown]    LogOut From Any Page

Print Button Test
    [Tags]    Print

    Go to Section    ${Contract}
    click element    ${ReportsButton}
    click element    //@value="1"

Order Button Test
    Go to Section    ${Account}
    click element    css:[data-item-marker=\"filterButton\"]
    click element    ${NormalModeFilter}
    sleep    2s
    input text    ${FilterTextField}    ${UserPassword}
    click element    ${ApplyButton}
    sleep    5s
    click element    ${CloseNormalFilter}
    sleep    2s
*** Keywords ***


