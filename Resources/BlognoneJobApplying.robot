*** Settings ***
Documentation       Testing the BlognoneJob Applying

Library             SeleniumLibrary


*** Keywords ***
Applying without login
    Open Browser    https://jobs.blognone.com/login?next=https%3A%2F%2Fjobs.blognone.com%2F    chrome
    Maximize Browser Window
    Go To    https://jobs.blognone.com/company/okkami-inc/job/software-quality-ass-hQwN
    Sleep    2
    Click Button    xpath://*[@id="root"]/div/div/div/div[1]/div[2]/button
    Sleep    2
    Page Should Contain    Please login before performing that action

Applying with login
    Go To    https://jobs.blognone.com/login?next=https%3A%2F%2Fjobs.blognone.com%2F
    Sleep    2
    Input Text    //*[@id="email"]    pattri.prp@gmail.com
    Input Password    //*[@id="password"]    1928prptri
    Click Button    Login
    Sleep    2
    Go To    https://jobs.blognone.com/company/okkami-inc/job/software-quality-ass-hQwN
    Click Button    xpath://*[@id="root"]/div/div/div/div[1]/div[2]/button
    Sleep    2
    Page Should Contain    Application for
    Log    Test Completed

Editing Upload Profile Test
    Choose File
    ...    xpath://*[@id="root"]/div/div/form/div[1]/div[3]/div/div[2]/div/div[1]/div[1]/div/input
    ...    ${EXECDIR}/Resources/Files/This is Resume.pdf
    Choose File
    ...    xpath://*[@id="root"]/div/div/form/div[1]/div[3]/div/div[2]/div/div[1]/div[1]/div/input
    ...    ${EXECDIR}/Resources/Files/This is Transcript.pdf
    Sleep    1
    Page Should Contain    View Current File
    Close Browser
