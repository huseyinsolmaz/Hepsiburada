*** Settings ***
Library           Selenium2Library
Resource          ../Variables/MainFunctions.robot
Resource          ../Variables/PaymentVariables.robot


*** Keywords ***
Click Complete Shopping Button
    Wait And Click Element  ${completeshopingButton}

Click Address Continue Button
    Wait For Element   ${deliverType}
    Wait And Click Element  ${addressContinueButton}

Check Payment Page
    Check Element Text   ${paymentPageTitleLocator}  ${paymentPageTitle}  Scenario 1
