***Settings***

Documentation           Geek actions

***Keywords***
Go To Geek Form
    Click                       css=a[href="/be-geek"] >> text=Seja um Geek

    Wait For Elements State     css=.be-geek-form       visible     5

Fill Geek Form
    [Arguments]             ${geek_profile}

    Fill Text               id=whatsapp     ${geek_profile}[whats]
    Fill text               id=desc         ${geek_profile}[desc]

    Select Options By       id=printer_repair       text       ${geek_profile}[printer_repair]
    Select Options By       id=work                 text       ${geek_profile}[work]

    Fill Text               id=cost         ${geek_profile}[cost]

Submit Geek Form
    Click                   css=button >> text=Quero ser um Geek

Geek Form Should Be Success
    ${expected_message}     Set Variable        Seu cadastro está na nossa lista de geeks. Agora é só ficar de olho no seu WhatsApp.

    Wait For Elements State     css=p >> text=${expected_message}       visible     5

Scenarios WhatsApp
    [Arguments]               ${whats}

    Fill Geek Whatsapp        ${whats}
    Submit Geek Form
    Alert Span Should Be      O Whatsapp deve ter 11 digitos contando com o DDD
    Take Screenshot

Scenarios Service Value
    [Arguments]               ${cost}

    Fill Geek Service Value   ${cost}
    Submit Geek Form
    Alert Span Should Be      Valor hora deve ser numérico
    Take Screenshot

Fill Geek Whatsapp
    [Arguments]             ${whats}

    Fill Text               id=whatsapp     ${whats}
    Fill text               id=desc         Concerto computadores e impressoras, removo vírus, formato sistema operacional, instalo softwares.

    Select Options By       id=printer_repair       text       Sim
    Select Options By       id=work                 text       Presencial

    Fill Text               id=cost         200

Fill Geek Service Value
    [Arguments]             ${cost}

    Fill Text               id=whatsapp     11999999999
    Fill text               id=desc         Concerto computadores e impressoras, removo vírus, formato sistema operacional, instalo softwares.

    Select Options By       id=printer_repair       text       Sim
    Select Options By       id=work                 text       Presencial

    Fill Text               id=cost         ${cost}