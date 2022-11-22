*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/TestData.py

*** Keywords ***
Input Username
    Input Text  ${LoginUsernameInputBox}    ${UserName}

Input Password
    Input Text  ${LoginPasswordInputBox}    ${UserPassword}

Click Login
    Click Element    ${LoginButton}

AutoLogin
    OPEN BROWSER    ${AcrossUrl}    ${Chrm}
    maximize browser window
    delete all cookies
    wait until page contains    Логин
    Input Username
    Input Password
    Click Login
    WAIT UNTIL ELEMENT IS VISIBLE    ${mainpagelabel}    10s