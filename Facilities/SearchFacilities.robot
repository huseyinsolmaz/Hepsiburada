*** Settings ***
Library           Selenium2Library
Resource          ../Variables/MainFunctions.robot
Resource          ../Variables/SearchVariables.robot


*** Keywords ***
Filter And Select Brand
    Wait And Send Text  ${brandInput}    ${brand}
    Wait Until Element Is Visible  ${brandLabel}
    Wait And Click Element  ${brandLabel}

Select Price Range
    Wait And Click ELement  ${priceRange}

Select Color Black
    Wait And Click Element  ${colorBlack}

Click First Result Of Search
    Wait And Click Element   ${selectFirstProduct}
