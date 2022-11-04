*** Settings ***
Documentation       Example test case configuration
Resource            ../steps/swaglabs.steps.robot
Variables           ../TestData.py


*** Test Cases ***
Execute and test configuration
    Sign in Swaglabs    ${USER_STANDARD}    ${PASS_SECRET}