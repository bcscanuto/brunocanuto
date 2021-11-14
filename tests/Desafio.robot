*Settings*
Documentation           Desafio Final Módulo Pro
Resource                ${EXECDIR}/resources/Base.robot

Suite Setup             Start Session Desafio
Test Teardown           Finish Session

*** Test Cases ***

Tests Whatsapp Field
    [Tags]                  desafio_final            whats
    [Template]              Scenarios Whatsapp
    
    ${Empty}
    11
    1111111111

Empty Description
    [Tags]                  desafio_final            empty_desc
    ${user}                 Factory User             login

    Fill Geek Form          ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    Informe a descrição do seu trabalho

Tests Services Value Field
    [Tags]                  desafio_final            cost
    [Template]              Scenarios Service Value
    
    ${Empty}
    1a
    abc
    $#@1a


***Keywords***
Start Session Desafio
    ${user}                  Factory User    login

    New Browser     chromium        headless=False      slowMo=00:00:00
    New Page        ${BASE_URL}
    Do Login        ${user}
    Go To Geek Form

