*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/PageLocators.py
Variables  ../TestData/TestData.py
Variables  ../Locators/LogIn_HomePage_Locators.py
Variables  ../Locators/CommonLocators.py

*** Keywords ***
Go to Section
    [Arguments]    ${section_name}
    click element    ${section_name}
    wait until element is visible    ${filteritem}
    sleep    5s