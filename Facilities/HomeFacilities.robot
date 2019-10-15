*** Settings ***
Library           Selenium2Library
Resource          ../Variables/MainFunctions.robot
Resource          ../Variables/HomeVariables.robot


*** Keywords ***
Select Trending First Product
    Scroll To Element  ${product}
    Wait And Click Element    ${product}

Search İtem
    Wait And Send Text  ${searchInput}  ${searchData}
    Wait And Click Element  ${searchButton}
