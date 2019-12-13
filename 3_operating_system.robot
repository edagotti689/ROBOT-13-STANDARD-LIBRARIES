*** Settings ***
Documentation   *  Enables various operating system related tasks to be performed in the system where Robot Framework is running. *

Library    OperatingSystem

*** Variables ***
${ONE}    5
${TWO}    3

*** Test Cases ***
First Test Case
    Create Directory    LOG
    Create File    LOG/log_file.txt
    Remove File    LOG/log_file.txt
    Remove Directory    LOG
    File Should Exist    LOG/log_file.txt   Please create a log_file.txt " file

Run System Command
    ${r}    Run    dir
    Log    ${r}    ERROR






