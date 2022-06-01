*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${header_search_text_field}     xpath://*[@id="root"]/div/nav/div/div[3]/div/form/div/input
${text}                         okkami
${ENTER}                        RETURN


*** Keywords ***
Input Search Text at Page The Header and Click Search
    Input Text    ${header_search_text_field}    ${text}
    Press Keys    ${header_search_text_field}    ${ENTER}
