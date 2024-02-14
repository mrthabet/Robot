*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}       chrome
${URL}            https://iso.digitaltransformationinstitute.org:11001/account/login


*** Test Cases ***
TC01 Login to ISO
    login to app
TC02 Login to ISO
     login to app with invalid data

    #Close Browser

*** Keywords ***
login to app
    Open Browser     ${URL}         ${BROWSER}
    Sleep    10 seconds
    Input Text       xpath://input[@id="username"]   admin
    Input Text        id:password                    IsoUser%567
    Sleep    10 seconds
    Click Element    xpath://span[@class='mdc-button__label' and contains(text(), 'دخول')]
login to app with invalid data
     Open Browser     ${URL}         ${BROWSER}
    Sleep    10 seconds
    Input Text       xpath://input[@id="username"]   admin899
    Input Text        id:password                    IsoUser%56732323
    Sleep    10 seconds
    Click Element    xpath://span[@class='mdc-button__label' and contains(text(), 'دخول')]
