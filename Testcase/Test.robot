*** Settings ***
Library  SeleniumLibrary
Suite Setup     Open Browser    https://abhigyank.github.io/To-Do-List/     chrome
Suite Teardown  Close Browser
*** Variables ***


*** Test Cases ***
# TC01-Verify that add button can be clickable and working correctly
#     Wait Until Element Is Visible   xpath=//div[@class="container"]
#     Input Text  xpath=//input[@id="new-task"]     Test
#     Click Element   xpath=//i[@class="material-icons"]
#     Click Element   xpath=//a[@href="#todo"]
#     Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]

# TC02-Verify that delete button can be clickable and working correctly
#     Wait Until Element Is Visible   xpath=//div[@class="container"]
#     Input Text  xpath=//input[@id="new-task"]     Test
#     Click Element   xpath=//i[@class="material-icons"]
#     Click Element   xpath=//a[@href="#todo"]
#     Element Should Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]
#     Click Element   xpath=//div[@id="todo"]//button[@class="mdl-button mdl-js-button mdl-js-ripple-effect delete"]
#     Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]

# TC03-Verify that check box can be clickable
#     Wait Until Element Is Visible   xpath=//div[@class="container"]
#     Input Text  xpath=//input[@id="new-task"]     Test
#     Click Element   xpath=//i[@class="material-icons"]
#     Click Element   xpath=//a[@href="#todo"]
#     Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]
#     Click Element   xpath=//span[@class='mdl-checkbox__label']
#     Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]
#     Click Element   xpath=//a[@href='#completed']
#     Element Should Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-list__item-primary-content"]

TC04-Verify that user can remove the completed task
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]
    Click Element   xpath=//span[@class='mdl-checkbox__label']
    Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]
    Click Element   xpath=//a[@href='#completed']
    Element Should Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-list__item-primary-content"]
    Click Element   xpath=//div[@id="completed"]//button[contains(text(), "Delete") and @id="1"]
    Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-list__item-primary-content"]
