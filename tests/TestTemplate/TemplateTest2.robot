** Settings **
Test template  Valid Login

** Test cases **
TC1  abc  desktop  d1
TC2  xyz  laptop  d2

** Keywords **
Valid Login
    [Arguments]  ${username}  ${password}  ${device}
    log to console  ${username} and ${password} are inserted
    log to console  user is on ${device}