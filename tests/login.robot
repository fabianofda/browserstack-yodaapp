*** Settings ***
Resource    ../resources/base.resource

Test Setup        Start Session
Test Teardown     Close Session

*** Test Cases ***
Deve logar com sucesso
    [Tags]    suc

    Get started
    Navigate to           item_text=Formulários
    Go to item            item=Login              checkpoint=Olá Padawan, vamos testar o login?
    Fill form login       email=yoda@qax.com      pass=jedi
    
    Wait Until Page Contains    Boas vindas, logado você está.    timeout=5
    

Nao deve logar com senha incorreta
    [Tags]    inv

    Get started
    Navigate to           item_text=Formulários
    Go to item            item=Login              checkpoint=Olá Padawan, vamos testar o login?
    Fill form login       email=yoda@qax.com      pass=sith

    Wait Until Page Contains    Oops! Credenciais incorretas.    timeout=10
