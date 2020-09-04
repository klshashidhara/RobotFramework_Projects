*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse operations functionality

    #Right click functionality
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    3

    #Double click functionality
    go to    http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep    3

    #Drag and Drop Functionality
    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box6    id:box106
    sleep    4

    close browser



