# PlayWithTweets
A script to work find the tweets you are intrested in.

Twitter Official API has the bother limitation of time constraints. After mimic we get the best advantage of Twitter Search on browsers, it can search many filter option.

The Development platform I am using is Watir (http://watir.github.io/) and programming language ruby. I have some .bat files to execute based on the input from .csv file. The output is also dumped in .csv file. 

#Learning Video on Watir

Full video @ https://www.youtube.com/watch?v=pvTxnTkhzIc&index=1&list=PLUY1lsOTtPeLYmr2u67BCYyIaZH_M75M3

#Installation of require software on Windows

1, Download & Install Ruby -- https://rubyinstaller.org/ 
(On windows platform so double click on exe does everything) 

2. Download, Extract DevKit &Install 
    Download: 
```	
    Extract in Ruby folder 
    Install -- cmd (go to DevKit folder, search for cmd, the cmd will open with that path)
    cd \Ruby\devkit
    ruby dk.rb init
    ruby dk.rb install
```

3. Install libraries (gems) 
```
 C:\Users\you> gem install --no-ri --no-rdoc rspec
 C:\Users\you> gem install --no-ri --no-rdoc win32console
 C:\Users\you> gem install --no-ri --no-rdoc watir-webdriver
 C:\Users\you> gem install --no-ri --no-rdoc cucumber
 C:\Users\you> gem install selenium-webdriver
```

4. Install watir 

``` 
gem update --system --no-rdoc --no-ri
gem install watir --no-rdoc --no-ri
```
4. Install Firefox web browser 
 
5. Run the program 

6. Error -- on firefox connection not trusted 
    Commercial Antivirus blocks the encrypted connected and hence will not allow the execution of the program 
    Disable "scan encrypted connectes" option from the "scan- networks" in antivirus. restart the computer and execute the program again. 

7. Once it is all done run the demo.rb file using "ruby demo.rb" commmand

Some additional link for help:
https://github.com/mozilla/geckodriver/releases

To run all tests if you are planning to add 
E:\Watir>rspec
