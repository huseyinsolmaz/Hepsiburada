*** Settings ***
Suite Setup
Test Setup        Launch Browser  ${BROWSER}  ${url}
Test Teardown     When Test Fail Take Screenshot
Resource          ../Variables/MainFunctions.robot
Resource          ../Facilities/LoginFacilities.robot
Resource          ../Facilities/HomeFacilities.robot
Resource          ../Facilities/PaymentFacilities.robot
Resource          ../Facilities/SearchFacilities.robot
Resource          ../Facilities/ProductFacilities.robot
Library           Selenium2Library
Library           ../Variables/PythonFunctions.py

*** Variables ***
${BROWSER}=   Chrome

*** Test Cases ***
Login And Add Cart
    Login HB
    Select Trending First Product
    Add To Cart
    Click Complete Shopping Button
    Click Address Continue Button
    Check Payment Page

Search Product And Filter
    Search İtem
    Filter And Select Brand
    Select Price Range
    Select Color Black
    Click First Result Of Search
    Check Product Reviews
    Click Yes Fist Avaliable Review




*** Keywords ***
