*** Settings ***
Documentation         Signup Test Suite

Resource              ${EXECDIR}/resources/Base.robot  

Test Setup            Start Session
Test Teardown         Finish Session

*** Test Cases ***
Register a new user 

    ${user}            Factory user

    Set Suite Variable  ${user}    

    Go to Signup form
    Fill Signup form    ${user}    
    Submit Signup form    
    User should be registered
    
Duplicate User    
        
    Go to Signup form
    Fill Signup form    ${user}    
    Submit Signup form   
    Modal Content Should be    Já temos um usuário com o e-mail informado.
