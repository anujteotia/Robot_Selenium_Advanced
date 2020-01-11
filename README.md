# Robot Selenium Project
This project demonstrates how you can use robot framework to automate web ui.

### Prerequisites
* Python must be installed (2.7.17 or 3.8.1)
* Libraries given below are installed
  * robotframework==3.1.2
  * robotframework-seleniumlibrary==4.1.0
  * selenium==3.141.0
  * urllib3==1.25.7
* Latest chrome/firefox browser is installed

### How To Run
```
navigate to robot_framework directory
robot Tests/
```

### Highlights
This framework supports chrome and firefox browsers on Windows and MacOS platforms.

Browser can be changed to `Chrome` or `firefox` by changing the value of `browser` in `Locators/properties.robot` file.
* All supporting customised robot keywords can be located in `Keywords` directory
* All the locators and paths can be found in `Locators` directory
* All the Test cases are present in `Tests` directory
* Web driver executables are present in `WebDrivers` directory

### Report
* Output report(`log.html`) is present under robot_framework directory
