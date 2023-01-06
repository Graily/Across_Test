*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LogIn_HomePage_Locators.py
Variables  ../TestData/TestData.py
Variables  ../Locators/CommonLocators.py

*** Keywords ***
Input Username
    Input Text  ${LoginUsernameInputBox}    ${UserName}

Input Password
    Input Text  ${LoginPasswordInputBox}    ${UserPassword}

Click Login
    Click Element    ${LoginButton}

LogOut From Any Page
    click element    ${ProfileUserButton}
    wait until element is visible    ${ExitMenuButton}
    click element    ${ExitMenuButton}
    wait until element is visible    ${LoginUsernameInputBox}

Go to Profile Menu
    click element    ${ProfileUserButton}
    click element    ${ProfileMenuButton}
    wait until element is visible    ${SaveButton}

Safe Profile
    click element    ${SaveButton}

Cancel Profile
    click element    ${cancelprofilebutton}

Change Culture
    [Arguments]    ${CultureName}
    click element    ${CultureSelect}
    wait until element is visible    ${CultureName}
    click element    ${CultureName}


Go to Config
    click element    ${gearbutton}
    click element    //ul[@class='menu-wrap menu']/li[.='Открыть дизайнер системы']
    wait until element is visible    ${config}
    click element    ${config}


AutoLogin
    OPEN BROWSER    ${AcrossUrl}    ${Chrm}
    maximize browser window
    delete all cookies
    wait until page contains    Логин
    Input Username
    Input Password
    Click Login
    WAIT UNTIL ELEMENT IS VISIBLE    ${mainpagelabel}    10s