*** Settings ***

Library     AppiumLibrary

*** Keywords ***
Get started
    ${START}    Set Variable      //android.widget.Button[@text=QAX]
    Wait Until Element Is Visible     ${START}    10
    Click Element                     ${START} 
    
Navigate to
    [Arguments]    ${item_text}

    ${hamburguer}    Set Variable        //android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible     ${hamburguer}      10
    Click Element                     ${hamburguer} 

    ${menu_item}     Set Variable    //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible     ${menu_item}      10
    Click Element                     ${menu_item}

Go to item
    [Arguments]    ${item}    ${checkpoint}
  
    ${el}    Set Variable        //*[@text="${item}"]
    Wait Until Element Is Visible         ${el}    10
    Click Element                ${el}        
    Wait Until Page Contains         ${checkpoint}     10

Fill form login
    [Arguments]    ${email}    ${pass}

    Input Text    com.qaxperience.yodapp:id/etEmail    ${email}
    Input Text    com.qaxperience.yodapp:id/etPassword    ${pass}
    Click Element    com.qaxperience.yodapp:id/btnSubmit