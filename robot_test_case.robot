*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${VALID USER}    Admin
${VALID PASSWORD}    admin123
${INVALID USER}    Admin
${INVALID PASSWORD}    123456

*** Test Cases ***
Valid Login
    [Documentation]    Test login thành công
    Open Browser    ${URL}    chrome

    Wait Until Element Is Enabled    name=username    timeout=10
    Input Text    name=username    ${VALID USER}
    Input Text    name=password    ${VALID PASSWORD}
    Wait Until Element Is Enabled    xpath=//button[@type="submit"]    timeout=5

    TRY
        Click Element    xpath=//button[@type="submit"]
    EXCEPT
        Log To Console    Không tìm thấy nút submit
    END

    Wait Until Page Contains    Dashboard    timeout=10
    Log To Console    Đăng nhập thành công
    Close Browser

Invalid Login
    [Documentation]    Test login thất bại
    Open Browser    ${URL}    chrome

    Wait Until Element Is Enabled    name=username    timeout=10
    Input Text    name=username    ${INVALID USER}
    Input Text    name=password    ${INVALID PASSWORD}
    Wait Until Element Is Enabled    xpath=//button[@type="submit"]    timeout=5

    TRY
        Click Element    xpath=//button[@type="submit"]
    EXCEPT
        Log To Console    Không tìm thấy nút submit
    END

    Wait Until Page Contains Element    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[1]/p    timeout=10
    Log To Console    Đăng nhập thất bại
    Close Browser
