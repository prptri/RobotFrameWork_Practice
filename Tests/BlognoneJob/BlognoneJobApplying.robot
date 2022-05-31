*** Settings ***
Documentation       Testing the BlognoneJob Applying

Library             SeleniumLibrary


*** Test Cases ***
Applying with login
    Open Browser    https://jobs.blognone.com/company/okkami-inc/job/software-quality-ass-hQwN    chrome
    Maximize Browser Window
    Click Button    Apply Now
    #upload photo
    #upload resume
    #upload transcript
    #fill Firstname
    #fill Lastname
    #fill phone
    #fill E-mail
    #fill address

Applying without login
#
#
#page should return login page

Editing Test
