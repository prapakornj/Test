*** Settings ***
Library  SeleniumLibrary
Test Setup     Open Browser    https://abhigyank.github.io/To-Do-List/     chrome
Test Teardown  Close Browser
*** Variables ***


*** Test Cases ***
TC01-Verify that add button should working correctly
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @id="text-1"]

TC02-Verify that delete button should working correctly
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Element Should Be Visible   xpath=//span[contains(text(), "Test") and @id="text-1"]
    Click Element   xpath=//div[@id="todo"]//button[@class="mdl-button mdl-js-button mdl-js-ripple-effect delete"]
    Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]

TC03-Verify that check box can be able to click
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @id="text-1"]
    Click Element   xpath=//span[@class='mdl-checkbox__label']
    Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-checkbox__label"]
    Click Element   xpath=//a[@href='#completed']
    Element Should Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-list__item-primary-content"]

TC04-Verify that user can remove task in the completed task
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @id="text-1"]
    Click Element   xpath=//span[@class='mdl-checkbox__label']
    Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @id="text-1"]
    Click Element   xpath=//a[@href='#completed']
    Element Should Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-list__item-primary-content"]
    Click Element   xpath=//div[@id="completed"]//button[contains(text(), "Delete") and @id="1"]
    Element Should Not Be Visible   xpath=//span[contains(text(), "Test") and @class="mdl-list__item-primary-content"]

TC05-Verify that user can add dupplicate task
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     Test
    Click Element   xpath=//i[@class="material-icons"]
    Input Text  xpath=//input[@id="new-task"]     Test
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @id="text-1"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "Test") and @id="text-2"]
    
TC06-Verify that user can input the numberical value
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     01231233
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "01231233") and @id="text-1"]

TC-07Verify that user can input the special character
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]     =+[]\{}|;':,./<>?
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), "=+[]\{}|;':,./<>?") and @id="text-1"]

TC-08Verify that "TO-DO Tasks" won't display the task when user click on add button without input any text
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Element Should Not Be Visible   xpath=//span[contains(text(), "") and @id="text-1"]

TC-09Verify that "TO-DO Tasks" will display the space when user add the space in text field
    Wait Until Element Is Visible   xpath=//div[@class="container"]
    Input Text  xpath=//input[@id="new-task"]  ${SPACE}    
    Click Element   xpath=//i[@class="material-icons"]
    Click Element   xpath=//a[@href="#todo"]
    Wait Until Element Is Visible   xpath=//span[contains(text(), " ") and @id="text-1"]
    