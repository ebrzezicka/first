*** Settings ***

Library   SeleniumLibrary

*** Variables ***
${click_box}    xpath=//*[@id="__next"]/div[4]/div/div[2]/button
${forwarding}    //body/div[@id='__next']/div[3]/div[1]/nav[1]/div[1]/div[1]/div[2]/div[1]/a[1]
${login}    //input[@name="email"]
${email}    meritotest@gmail.com
${wrong_email}    meritotest@g.com
${password}     //body/div[@id='__next']/div[3]/div[3]/section[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/input[1]
${password for email}    Hasłodlatestów,1
${wrong_password for email}    qwerty1
${click_singin}    //button[@id='login']
${error_message}  //p[contains(text(),'Niepoprawny adres e-mail lub hasło')]
${error_message_password}    //p[contains(text(),'Hasło jest wymagane')]


*** Test Cases ***

Cases 1
    Open Browser    https://oko.press/  Chrome
    Maximize Browser Window
    Sleep  2
    Click Button    ${click_box}
    sleep  2
    Click Element    ${forwarding}
    sleep  2
    Input Text    ${login}    ${email}
    sleep  2
    Input Password    ${password}    ${password for email}
    Click Button    ${click_singin}
    Close Browser

Cases 2
    Open Browser    https://oko.press/  Chrome
    Maximize Browser Window
    Click Button    ${click_box}
    Click Element    ${forwarding}
    sleep  2
    Input Text    ${login}    ${email}
    Input Password    ${password}    ${wrong_password for email}
    Click Button    ${click_singin}
    Wait Until Element Is Visible    ${error_message}
    Close Browser

Cases 3
   Open Browser    https://oko.press/  Chrome
   Maximize Browser Window
   Click Button    ${click_box}
   Click Element    ${forwarding}
   sleep  2
   Input Text    ${login}    ${wrong_email}
   Input Password    ${password}    ${password for email}
   Click Button    ${click_singin}
   Wait Until Element Is Visible    ${error_message}
   Close Browser

Cases 4
    Open Browser    https://oko.press/  Chrome
    Maximize Browser Window
    Click Button    ${click_box}
    Wait Until Element Is Visible    ${forwarding}
    Click Element    ${forwarding}
    sleep  5
    Input Text    ${login}    ${email}
    Click Button    ${click_singin}
    Wait Until Element Is Visible    ${error_message_password}
    Close Browser







