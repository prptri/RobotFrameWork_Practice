*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://jobs.blognone.com/


*** Keywords ***
Start TestCase
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Finish TestCase
    Close Browser
