#Install

Go to https://www.python.org/ and download Python 3.7.x version as shown below and install it.

 Open command prompt and run below command.

 You have to install robot framework

Open CMD

   pip install -r requirements.txt

Requirements will install all package
If you get any errors in installition you may need this

  
   robotframework==3.2
   robotframework-faker==5.0.0
   robotframework-requests==0.7.0
   robotframework-selenium2library==3.0.0
   robotframework-seleniumlibrary==4.4.0


Install Firefox

    https://github.com/mozilla/geckodriver/releases

Or 

Install Chrome 

    https://chromedriver.chromium.org/downloads

You are ready to run your Test case
 For UI Tests
 
    cd  ${YOUR_PATH}
    robot -d results tests/project.robot
    
If You want to change browser you have to add command 
        
        --variable BROWSER:Chrome
        robot -d results --variable BROWSER:ff tests/project.robot
