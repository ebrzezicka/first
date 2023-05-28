*** Settings ***

Library   SeleniumLibrary

*** Variables ***
${forwarding}    //body/div[@id='__next']/div[3]/div[1]/nav[1]/div[1]/div[1]/div[2]/div[1]/a[1]
${login}    //body/div[@id='__next']/div[3]/div[3]/section[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/input[1]
${email}    meritotest@gmail.com
${password}    //body/div[@id='__next']/div[3]/div[3]/section[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/input[1]
${password for email}    Hasłodlatestów,1
${click_singin}    //button[@id='login']
*** Keywords ***


*** Test Cases ***

Cases 1
    Open Browser    https://oko.press/  Chrome
    Maximize Browser Window
    Sleep    2
    Click Button    xpath=//*[@id="__next"]/div[4]/div/div[2]/button
    sleep  2
    Click Element    ${forwarding}
    Input Text    ${login}    ${email}
    Input Password    ${password}    ${password for email}
    Click Button    ${click_singin}
    Sleep    6




