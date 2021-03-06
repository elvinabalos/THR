*** Settings ***
Documentation     A test case for a THR admin is able to logged in
Resource          ../../Resources/resources.robot
Suite Setup     Open THR
Suite Teardown    Close Browser

*** Test Cases ***
Login valid email and valid password
    [Tags]      positive
    Input Field     ${EMAIL_FIELD}  ${USER_CREDENTIALS}[email]
    Input Field     ${PASSWORD_FIELD}   ${USER_CREDENTIALS}[password]
    Click       ${LOGIN_BUTTON}
    Wait For Elements State     //div[contains(text(),'Signed in successfully.')]
