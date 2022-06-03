# RobotFW_Practice

## Practicing Automation Basic using Robot Framework

Requirement that you'll need to install before running these script

- Python (at least 3 or the latest version)

- Pip

- Configure PATH (Add python and pip to PATH)

- Install robotframework
 ```python 
 pip3 install robotframework
 ```
- Install robotframework seleniumlibrary
 ```python 
 pip3 install robotframework-seleniumlibrary
 ```
- Selenium browserdrivers for the browser (depending on the browser of your choice chrome,firefox,etc.) more info at https://www.selenium.dev/documentation/webdriver/getting_started/install_drivers/


**_Note_** Before you run the TestSuite.robot scirpt


- On the BlognoneJobLogin.robot you should put the valid id and password for the website to test login function on the variable that I marked the comment on it ${email_text} &  ${password}
- The last test case (applying) should be fail since I hard code the specific site testing on okkami result but the jd site doesn't exist anymore.
- Manual Test Case Example is in the excel file.

To run this
robot -d results .\Tests\BlognoneJob\TestSuite.robot

## Room for improvment for these scripts

- Dynamic Testing

- Setup & Teardown

- Variables

- Tags

- Page Object Model
