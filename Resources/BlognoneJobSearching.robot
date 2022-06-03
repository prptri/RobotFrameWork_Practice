*** Settings ***
Documentation       Testing the BlognoneJob Searching

Library             SeleniumLibrary


*** Keywords ***
Check Landing Page Jobs Topic
    #Start TestCase
    Open Browser    https://jobs.blognone.com/    chrome
    Maximize Browser Window
    #Click & Verify Search Result
    Click Element    xpath://*[@id="root"]/div/div/div/div[2]/div[1]/div/a[6]/div[2]
    sleep    2
    Page Should Contain    หางาน ตำแหน่ง    Qa

Searching Jobs in Landing Page
    Go To    https://jobs.blognone.com/
    Input Text    xpath://*[@id="root"]/div/div/div/div[1]/div[2]/div[1]/form/div[2]/input    Okkami
    Click Button    xpath://*[@id="root"]/div/div/div/div[1]/div[2]/div[1]/form/div[2]/button
    Sleep    2
    Page Should Contain    หางาน ตำแหน่งหรือบริษัท    Okkami
    Log    Test Completed

Filter Check
    Click Element    xpath://*[@id="searchBody"]/div[2]/div[1]/div/div/div/div[15]/label/input
    Sleep    2
    Page Should Contain    หางาน ตำแหน่งหรือบริษัท    okkami Qa
    Sleep    3
    #Click Link    xpath://*[@id="searchBody"]/div[2]/div[2]/a
    Log    Filter Check Test Completed
