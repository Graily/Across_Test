*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/TestData.py
Resource    ../KeywordsDefinationFiles/ModalWindow.robot
Resource    ../KeywordsDefinationFiles/CommonCreatio.robot
Variables  ../Locators/PageLocators.py

*** Keywords ***
Save page
    click element    ${SaveButton}


Fill in fields
    Fill List Item    ${Forwarder}    ${acrossru}
    click element    ${clientfield}
    wait until page contains    Выбрать
    search for item    ${jevko}
    Save page
    sleep    3s

