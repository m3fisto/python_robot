*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections

Resource    resources.robot
Resource    navigation.robot
Resource    system.robot


Suite Setup  Run Keywords   Configure Selenium   Navigate To Homepage
Suite Teardown  Exit Selenium

*** Test Cases ***
Check homepage
    Page Should Contain     css: head > title

Open Menu
    Navigate To Menu
    Page Should Contain     xpath: //title[contains(text(),'Menu')]