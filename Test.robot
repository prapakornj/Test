*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${ENV}  staging

*** Test Cases ***
TC01-Verify that add button can be clickable and working correctly
    Open Browser    https://abhigyank.github.io/To-Do-List/
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Click Element   xpath=id="new-task"
    Input Text  xpath=id="new-task"     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]

TC02-Verify that delete button can be clickable and working correctly
    Open Browser    https://abhigyank.github.io/To-Do-List/
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Click Element   xpath=id="new-task"
    Input Text  xpath=id="new-task"     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Element Should Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]
    Click Element   xpath=//div[@id="todo"]//button[@class="mdl-button mdl-js-button mdl-js-ripple-effect delete"]
    Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]


