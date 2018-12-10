*** settings ***
Library  Selenium2Library
Resource  ..//Resources//MyResourceFile.robot

*** variables ***
${Browser}  chrome
${URLSite}  https://bond.techstyle.net
${btnName}  'name'
${linkNum}  2
${searchStr}  Donah Test
${fName}  'Donahlyne'

*** test cases ***
TC_001 Start Browser
    Open Login Page  ${URLSite}  ${Browser}
    Input Username Password
    Click Login Button


TC_002 Search Bond
    Check Page Title
    Input Search String  ${searchStr}
    Click Fnc Button  ${btnName}  ${linkNum}
#    Click Member Quick Access Button
    Click CID Link
    Set Selenium Speed  1
    Click Edit Link
    Member Info Edit  ${fName}  ''  ''








