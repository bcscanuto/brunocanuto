*** Settings ***
Documentation    Delorean

Resource         ${EXECDIR}/resources/Database.robot

*Tasks*
Back to the past

    Connect to Postgres
    Reset Env
    Disconnect from Database

