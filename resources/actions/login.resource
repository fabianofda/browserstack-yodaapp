*** Settings ***

Library     AppiumLibrary

*** Keywords ***
Get started
    Wait Until Element Is Visible     //android.widget.Button[@text="QAX"]    30
    Click Element                     //android.widget.Button[@text="QAX"]
    
Navigate to
    [Arguments]    ${item_text}

    ${hamburguer}    Set Variable        //android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible     ${hamburguer}      30
    Click Element                     ${hamburguer} 

    ${menu_item}     Set Variable    //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible     ${menu_item}      30
    Click Element                     ${menu_item}

Go to item
    [Arguments]    ${item}    ${checkpoint}
  
    ${el}    Set Variable        //*[@text="${item}"]
    Wait Until Element Is Visible         ${el}    30
    Click Element                ${el}        
    Wait Until Page Contains         ${checkpoint}     30

Fill form login
    [Arguments]    ${email}    ${pass}

    Input Text    com.qaxperience.yodapp:id/etEmail    ${email}
    Input Text    com.qaxperience.yodapp:id/etPassword    ${pass}
    Click Element    com.qaxperience.yodapp:id/btnSubmit