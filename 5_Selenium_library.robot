*** Setting ***
Library    SeleniumLibrary

*** Test Cases ***
Login facebook
    Open Browser    http://www.facebook.com    Chrome
    Maximize Browser Window
    Sleep    5
    Input Text        email    sriram.python111@gmail.com
    Sleep    5
    Input Text        pass     password
    Sleep    5
    Click Button      Log In
    Sleep    5
    Close Browser

