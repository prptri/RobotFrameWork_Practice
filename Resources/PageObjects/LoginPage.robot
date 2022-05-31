*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}                  https://jobs.blognone.com/login?next=https%3A%2F%2Fjobs.blognone.com%2F
${BROWSER}              chrome
${EMAILTEXTFIELD}       //*[@id="email"]
${PASSWORDTEXTFILED}    //*[@id="password"]
${LOGINBUTTON}          //*[@id="root"]/div/div/div/div/form/button


*** Keywords ***
Login
    Input Text    ${EMAILTEXTFIELD}    pattri.prp@gmail.com
