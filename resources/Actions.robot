*** Settings ***   
Documentation        Ações do Sistema

*** Keywords ***
Go to Signup form     
    Go To                      ${BASE_URL}/signup     
    Wait for elements state    css=.signup-form        visible        5    

Fill Signup form
    [Arguments]            ${user} 

    Fill Text              id=name        ${user}[name]    
    Fill Text              id=lastname    ${user}[lastname]  
    Fill Text              id=email       ${user}[email]      
    Fill Text              id=password    ${user}[password]  

Submit Signup form
    Click                  css=.submit-button >> text=Cadastrar

User should be registered
    ${expect_message}          Set Variable    css=p >> text=Agora você faz parte da Getgeeks. Tenha uma ótima experiência.     
    Wait for elements state    ${expect_message}    visible    5

Modal Content Should be
    [Arguments]                 ${expect_text}

    ${title}                    Set Variable         css=.swal2-title    
    ${content}                  Set Variable         css=.swal2-html-container

     Wait for elements state    ${title}             visible    5
     Get Text                   ${title}             equal      Oops...

     Wait for elements state    ${content}           visible    5
     Get Text                   ${content}           equal      ${expect_text}