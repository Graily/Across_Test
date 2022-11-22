*** Settings ***
Documentation  AcrossTest
Library  SeleniumLibrary
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/LoginPage.robot
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/HomePage.robot
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/McsProjectsSection.robot
Resource    ../Resourses/PageObject/KeywordsDefinationFiles/McsProjectsPage.robot

Test Setup    AutoLogin

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


*** Keywords ***


