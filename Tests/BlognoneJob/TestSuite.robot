*** Settings ***
Documentation       A Test Sutie with multiply test    for blognonejob Website including Login,Searching, and Applying.

Resource            ../../Resources/BlognoneJobLogin.robot
Resource            ../../Resources/BlognoneJobSearching.robot
Resource            ../../Resources/BlognoneJobApplying.robot
#Test Cases Suite


*** Test Cases ***
Login TestCases
    Signing with Correct Email and Password
    Sign Out
    Signing with Wrong Email
    Signing with Wrong Password

Searching TestCases
    Check Landing Page Jobs Topic
    Searching Jobs in Landing Page
    Filter Check

Applying TestCases
    Applying without login
    Applying with login
    Editing Upload Profile Test
    [Teardown]    Close Browser
