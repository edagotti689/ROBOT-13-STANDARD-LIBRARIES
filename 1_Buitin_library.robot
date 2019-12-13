*** Settings ***
Documentation   *  Provides a set of often needed generic keywords. Always automatically available without imports *

Library    Builtin

*** Variables ***
${name}         SRIRAM

*** Test Cases ***
Testcase:1
     Log To Console    ${name}
     Sleep    5
     Log    Name is = ${name}    WARN
     Run Keyword If    3 == 3    Log    IF    ERROR
     Repeat Keyword    3    Log   Name is = OK    WARN