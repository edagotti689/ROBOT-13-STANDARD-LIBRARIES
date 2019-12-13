*** Settings ***
Documentation   *  Library for generating, modifying and verifying strings *

Library    String

*** Variables ***
${name}         SRIRAM
${FNAME}        srikumar
${FULL_NAME}    sriram sri
${SPLIT}        sri,ram,kumar
*** Test Cases ***
Testcase:1
    ${name}    Convert To Lowercase    ${name}
    Log    After Converting ==> ${name}    ERROR

    ${FNAME}   Remove String    ${FNAME}     kumar
    Log    After Removing ==> ${FNAME}    ERROR

    ${FULL_NAME}    Replace String    ${FULL_NAME}    sri    sai   2
    Log    After Replace ==> ${FULL_NAME}    WARN

    ${SPLIT}    Split String    ${SPLIT}    ,
    Log    After spliting ==> ${SPLIT}    ERROR

    ${SUBSTRING}    Get Substring    ${name}    0    3
    Log    Substring is ==> ${SUBSTRING}    WARN

