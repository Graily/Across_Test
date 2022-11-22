*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/TestData.py
Variables  ../Locators/CommonLocators.py

*** Keywords ***
Search For Item
    [Arguments]    ${keys}
    click element    ${searchfield}
    press keys    ${searchfield}    ${keys}
    click element    ${applybutton}
    sleep    2s
    click element    ${ModalItemSelect}
    click element    ${ModalSelectButton}

