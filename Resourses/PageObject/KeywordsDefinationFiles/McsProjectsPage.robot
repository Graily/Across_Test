*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/TestData.py
Resource    ../KeywordsDefinationFiles/ModalWindow.robot
Resource    ../KeywordsDefinationFiles/CommonCreatio.robot
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

