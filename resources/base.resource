*** Settings ***

Library     AppiumLibrary
Resource    ./actions/login.resource

*** Keywords ***
Start session
    Open Application
    ...    http://localhost:4723
    ...    platformName=Android
    ...    automationName=UIAutomator2
    ...    app=${EXECDIR}/app/yodapp-beta.apk
    ...    appium:uuid=emulator-5554
    ...    autoGrantPermissions=true
   
Close session
    Capture Page Screenshot
    Sleep    2
    Close Application