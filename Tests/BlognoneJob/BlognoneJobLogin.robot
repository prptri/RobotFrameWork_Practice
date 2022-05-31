*** Settings ***
Documentation       Testing the BlognoneJob Website

Library             SeleniumLibrary


*** Variables ***
#Best Pracitces
#Global Variable = UPPERCASE
#Local Variable = lowercase
${email_text}                   pattri.prp@gmail.com
${login_page_url}               https://jobs.blognone.com/login?next=https%3A%2F%2Fjobs.blognone.com%2F
${email_input_path}             //*[@id="email"]
${password_input_path}          //*[@id="password"]
${password}                     1928prptri
${login_button}                 Login
${link_to_profile_dashboard}    //*[@id="root"]/div/nav/div/ul[2]/li/a
${signout_link}                 xpath://*[@id="root"]/div/div/div/div/div/nav/div/div/a[3]
${wrong_email}                  wrongemail@gmail.com
${login_header_button}          //*[@id="root"]/div/nav/div/ul[2]/li/a
${wrong_password}               dfkoegks
${alert_login}                  Unable to log in with provided credentials.
${alert_login_element}          xpath://*[@id="root"]/div/div/div/div/form/div[3]


*** Test Cases ***
Signing with Correct Email and Password
    Open Browser    ${login_page_url}    chrome
    Maximize Browser Window
    Input Text    ${email_input_path}    ${email_text}

    Input Password    ${password_input_path}    ${password}
    Click Button    Login
    Log    Test Completed

Sign Out
    Sleep    2
    Click Link    ${link_to_profile_dashboard}
    Page Should Contain    Overview
    Sleep    2
    Click Link    ${signout_link}
    Sleep    2
    Page Should Contain    the best place to find tech talents
    Log    Test Completed

Signing with Wrong Email
    Click Link    ${login_header_button}
    Input Text    ${email_input_path}    ${wrong_email}
    Input Password    ${password_input_path}    ${password}
    Click Button    ${login_button}
    Sleep    2
    Page Should Contain    ${alert_login}
    Log    Test Completed

Signing with Wrong Password
    Input Text    ${email_input_path}    ${EMPTY}
    Input Text    ${email_input_path}    ${email_text}
    Input Password    ${password_input_path}    ${EMPTY}
    Input Password    ${password_input_path}    ${wrong_password}
    Click Button    ${login_button}
    Element Should Be Visible    ${alert_login_element}
    Log    Test Completed

#Signing with Blognone
    #Go To    https://www.blognone.com/
    #Sleep    5
    #Wait Until Element Contains    xpath://*[@id="block-user-login"]/h2    sign in
    #Input Text    xpath://*[@id="edit-name"]    xxxxx
    #Input Password    //*[@id="edit-pass"]    xxxxx
    #Click Element    //*[@id="edit-submit"]
    #wait until success
    #then go to blognonejob
    #click Login
    #click login with blognone job
    #page should go to landing page
