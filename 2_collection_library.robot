*** Settings ***
Documentation   *  Provides a set of keywords for handling Python lists and dictionaries. *

Library    Collections

*** Variables ***
${ONE}    5
${TWO}    sriram

*** Test Cases ***
List Operations
    ${L}    Create List
    Append To List    ${L}   one   2   3   ${TWO}
    log    List values are :: ${L}    WARN
    ${R} =    Get From List   ${L}    2
    log    Second index value :: ${R}    WARN
    Remove From List  ${L}   0
    log    After removing based on index :: @{L}    ERROR
    Remove Values From List   ${L}   sriram
    log    After removing based on value ==> ${L}    WARN

Dict Operations
    ${D}    Create Dictionary    name=sriram    dno=34
    Log     Dict is :: ${D}    WARN
    ${r}    Get From Dictionary    ${D}    name
    Log     Name is : ${r}     WARN
    ${K}    Get Dictionary Keys    ${D}
    Log     Keys are : ${K}     WARN
    ${v}    Get Dictionary values   ${D}    
    Log     Values are :: ${V}      error
    Remove From Dictionary    ${D}    name
    Log     Dict values are :: ${D}    WARN






