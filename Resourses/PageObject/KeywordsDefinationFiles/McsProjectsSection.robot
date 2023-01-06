*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/PageLocators.py
Variables  ../TestData/TestData.py
Variables  ../Locators/CommonLocators.py

*** Keywords ***
Add Project
    click element    ${AddRecordButton}
    wait until element is visible    ${Forwarder}


Add Order GP
    [Arguments]    ${OrderType}
    click element    ${AddRecordButton}
    click element    //ul[@class='menu-wrap menu']/li[.='${OrderType}']