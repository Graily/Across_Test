*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/TestData.py
Variables  ../Locators/CommonLocators.py

*** Keywords ***
#Filter Keywords
Close Filters
    click element    ${closefilter}

Open Filters
    click element    ${filteritem}
    wait until page contains    ${GroupButton}
    click element    ${advmodefilter}
    wait until page contains    Добавить условие

Add Filter
    click element    ${addfilter}
    wait until element is visible    ${additemfilter}
    click element    ${additemfilter}
    press keys    ${additemfilter}    ${idFilter}
    wait until element is visible   ${idFilterList}
    click element    ${idFilterList}
    click element    ${FilterSelectButton}


# List item Keywords
Fill List Item
    [Arguments]    ${cl_list}    ${cl_list_Item}
    click element    ${cl_list}
    wait until element is visible    ${cl_list_Item}
    click element    ${cl_list_Item}


Open Section Item (Id)



