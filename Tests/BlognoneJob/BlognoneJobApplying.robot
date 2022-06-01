*** Settings ***
Documentation       Testing the BlognoneJob Applying

Library             SeleniumLibrary


*** Test Cases ***
Applying without login
    #Open Browser
    Open Browser    https://jobs.blognone.com/login?next=https%3A%2F%2Fjobs.blognone.com%2F    chrome
    #Maximize browser windows
    Maximize Browser Window
    Go To    https://jobs.blognone.com/company/okkami-inc/job/software-quality-ass-hQwN
    Sleep    2
    Click Button    xpath://*[@id="root"]/div/div/div/div[1]/div[2]/button
    Sleep    2
    Page Should Contain    Please login before performing that action

Applying with login
    #Login
    Go To    https://jobs.blognone.com/login?next=https%3A%2F%2Fjobs.blognone.com%2F
    Sleep    2
    Input Text    //*[@id="email"]    pattri.prp@gmail.com
    Input Password    //*[@id="password"]    1928prptri
    Click Button    Login
    #go to jd page
    Sleep    2
    Go To    https://jobs.blognone.com/company/okkami-inc/job/software-quality-ass-hQwN
    #click apply
    Click Button    xpath://*[@id="root"]/div/div/div/div[1]/div[2]/button
    #page should return applying job page
    Sleep    2
    Page Should Contain    Application for
    Log    Test Completed

Editing Profile Test