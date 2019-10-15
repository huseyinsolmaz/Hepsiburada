*** Settings ***
Library           Selenium2Library
Resource          ../Variables/MainFunctions.robot
Resource          ../Variables/ProductVariables.robot


*** Keywords ***
Add To Cart
    Wait And Click Element    ${addToCart}

Product Reviews Tabs
    Wait And Click Element  ${productReviewsTab}

Check Product Reviews
    ${status}    ${value}=    Run Keyword And Ignore Error    Element Text Should Be   ${productReviewsTab}  Yorumlar (0)
    Run Keyword If    '${status}'=='PASS'    Pass Execution   Product hasn't Reviews
    ...    ELSE    Product Reviews Tabs

Click Yes Fist Avaliable Review
    Scroll To Element  ${reviewsYesButton}
    Wait And Click Element  ${reviewsYesButton}
    Check Review Message

Check Review Message
    Check Element Text  ${reviewMessageLocator}   ${reviewMessage}   Scenario 2