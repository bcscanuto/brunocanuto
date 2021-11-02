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
    
