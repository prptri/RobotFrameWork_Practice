*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Verify Search Result
    Input Text    //*[@id="root"]/div/div/div/div[1]/div[2]/div[1]/form/div[2]/input    Okkami
    Press Key    //*[@id="root"]/div/div/div/div[1]/div[2]/div[1]/form/div[2]/button    RETURN

    Page Should Contain    หางาน ตำแหน่งหรือบริษัท okkami
    Log    Test Verify Search Result Completed

Filter results by condidtion
    Click Element    //*[@id="searchBody"]/div[2]/div[1]/div/div/div/div[15]/label/input
    Sleep    2
    Page Should Contain    หางาน ตำแหน่งหรือบริษัท okkami Qa
