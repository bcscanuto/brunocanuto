*** Settings ***    
Documentation        Database  Helpers

Library              DatabaseLibrary

*** Keywords ***
Connect to Postgres
    
    Connect to Database        psycopg2    
    ...                        dnvmewrs
    ...                        dnvmewrs
    ...                        4fXbeK7JW25FYm3YNYTshMytVMPCNvdL    
    ...                        fanny.db.elephantsql.com
    ...                        5432

Reset Env
    
    Execute SQL String        DELETE from public.geeks;
    Execute SQL String        DELETE from public.users;
    
Insert User
    [Arguments]     ${u}

    ${hashed_pass}     Get Hashed Pass     ${u}[password]

    ${q}    Set Variable    INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false)

    Execute SQL String      ${q}

Users Seed

    ${user}         Factory User Login
    Insert User     ${user}