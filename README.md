# RobotFW_Practice

practicing Automation Basic using Robot Framework

Requirement that you'll need to install before running theses script
-Python (at least 3 or the latest version)
-Pip
-Configure PATH (Add python and pip to PATH)
-pip3 install robotframework
-pip3 install robotframework-seleniumlibrary
-selenium browserdrivers for the browser (depending on the browser of your choice chrome,firefox,etc.) moreinfo at https://www.selenium.dev/documentation/webdriver/getting_started/install_drivers/

**_Note_** Before you run the TestSuite.robot scirpt

- (BlognoneJobLogin.robot) you should put the valid id and password for the website to test login function on the variable that i marked the comment on it
- The last test case (applying) should be fail since i hard code the specific site testing on okkami result but the jd site doesn't exist anymore.

To run this
robot -d results .\Tests\BlognoneJob\TestSuite.robot
