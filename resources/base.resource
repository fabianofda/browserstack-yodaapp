*** Settings ***

Library     AppiumLibrary
Resource    ./actions/login.resource

*** Keywords ***
# Start session
#     Open Application
#     ...    http://localhost:4723
#     ...    platformName=Android
#     ...    automationName=UIAutomator2
#     ...    app=${EXECDIR}/app/yodapp-beta.apk
#     ...    autoGrantPermissions=true
#     ...    projectName=YodaApp
   

# Close session
#     Capture Page Screenshot
#     Sleep    2
#     Close Application

Start BrowserStack Session
    Open Application
    ...    platformName=Android
    ...    appium:deviceName=Samsung Galaxy S22 Ultra
    ...    appium:automationName=UIAutomator2
    ...    appium:app=bs://18a57390e2aeb9ecb0c19580cb29ad69af16d250
    ...    appium:uuid=emulator-5554
    ...    appium:autoGrantPermissions=true
    ...    appium:projectName=YodaApp
    ...    appium:userName=fabiano13
    ...    appium:accessKey=PxzXpd7SKh4bqW8s5xmC
    ...    appium:platformVersion=12.0 

Close BrowserStack Session
    Capture Page Screenshot
    Sleep    2
    Close Application


