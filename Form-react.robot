* Settings *
Library     SeleniumLibrary

*** Variables ***
${BROWSER}                  Chrome
${CHOOSE_NAMETITLETHA}      นาย
${INPUT_FIRSTNAMETHA}       ทินภัทร
${INPUT_LASTNAMETHA}        จินดารัตน์
${CHOOSE_NAMETITLEENG}      Mr.
${INPUT_FirstnameENG}       Tinnapaht
${INPUT_LASTNAMEENG}        Chindarat
${CHOOSE_BIRTHDATE}         22
${CHOOSE_BIRTHMONTH}        กุมภาพันธ์
${CHOOSE_BIRTHYEAR}         2546
${INPUT_IDCARD}             0123456789999
${INPUT_PASSWORD}           amaz1ngG
${INPUT_MOBILE}             0888888888
${INPUT_EMAIL}              654259027@webmail.npru.ac.th




${RESULT_NAMETITLETHA}
${RESULT_FIRSTNAMETHA}
${RESULT_LASTNAMETHA}
${RESULT_NAMETITLEENG}
${RESULT_FirstnameENG}
${RESULT_LASTNAMEENG}
${RESULT_BIRTHDATE}
${RESULT_BIRTHMONTH}
${RESULT_BIRTHYEAR}
${RESULT_IDCARD}
${RESULT_PASSWORD}
${RESULT_MOBILE}
${RESULT_EMAIL}


* Test Cases *
Input ValidationNameENG
    [Documentation]    Test case 
    Open Browser
    Input FirstnameENG
    Click Element Field
    Verify FirstnameENG Results
    Capture Page Screenshot

Input ValidationIDCARD
    [Documentation]    Test case
    Open Browser
    Input IdCard
    Click Element Field
    Verify IdCard Results
    Capture Page Screenshot

Input ValidationMOBILE
    [Documentation]
    Open Browser
    Input Mobile
    Click Element Field
    Verify Mobile Results
    Capture Page Screenshot

Input ValidationEMAIL
    [Documentation]
    Open Browser
    Input Email
    Click Element Field
    Verify Email Results
    Capture Page Screenshot

Input ValidationPASSWORD
    [Documentation]
    Open Browser
    Input Password
    Click Element Field
    Verify Password Results
    Capture Page Screenshot


* Keywords *
Open Google ReactForm
    Open Browser    https://formik-react-2-0.vercel.app/ ${BROWSER}

Input FirstnameENG
    Input Text    name=firstnameENG    ${INPUT_FirstnameENG}
    
Input IdCard
    Input Text    name=idCard    ${INPUT_IDCARD}

Input Mobile
    Input Text    name=mobile    ${INPUT_MOBILE}

Input Email
    Input Text    name=email    ${INPUT_EMAIL}

Input Password
    Input Text    name=password   ${INPUT_PASSWORD} 

Click Element Field
    Click Element    id=firstNameTH

Verify FirstnameENG Results
    Wait Until Page Contains    ${RESULT_FirstnameENG}
    Page Should Contain    ${RESULT_FirstnameENG}

Verify IdCard Results
    Wait Until Page Contains    ${RESULT_IDCARD}
    Page Should Contain    ${RESULT_IDCARD}

Verify Mobile Results
    Wait Until Page Contains    ${RESULT_MOBILE}
    Page Should Contain    ${RESULT_MOBILE}

Verify Email Results
    Wait Until Page Contains    ${RESULT_EMAIL}
    Page Should Contain    ${RESULT_EMAIL}

Verify Password Results
    Wait Until Page Contains    ${RESULT_PASSWORD}
    Page Should Contain    ${RESULT_PASSWORD}
