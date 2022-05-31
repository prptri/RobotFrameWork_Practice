*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Input Search Text and Click Search
    Input Text    //*[@id="root"]/div/nav/div/div[3]/div/form/div/input    Okkami
    Click Element    //*[@id="root"]/div/nav/div/div[3]/div/form/div/div/svg

Login
