*** Setting ***

Library         Selenium2Library

*** Variables ***
{URL}          http://192.168.1.125:3000
${BROWSER}      Firefox
${DELAY_TIME}   1.5
${param}        test

*** Keywords ***

Open Browser To Mari Page
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed     ${DELAY_TIME}

Mari Page Should be Open
    Title Should Be  http - Node.js Manual &amp; Documentation

Text Display
    Element Text Should Be xpath:///html/body , Hello World Sawasdee krub, message=None

*** Test Cases ***

Click Mari Log in link
    Open Browser To Mari Page
    Mari Page Should be Open
    Text Display
    [Teardown]    Close Browser
