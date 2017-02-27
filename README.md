# PlayWithTweets
A script to work find the tweets you are intrested in.

Twitter Official API has the bother limitation of time constraints. After mimic we get the best advantage of Twitter Search on browsers, it can search many filter option.

The Development platform I am using is Watir (http://watir.github.io/) and programming language ruby. I have some .bat files to execute based on the input from .csv file. The output is also dumped in .csv file. 

#Learning Video on Watir

Full video @ https://www.youtube.com/watch?v=pvTxnTkhzIc&index=1&list=PLUY1lsOTtPeLYmr2u67BCYyIaZH_M75M3

#Installation of require software on Windows

1) Download & Install Ruby -- https://rubyinstaller.org/ 
(On windows platform so double click on exe does everything) 

2) Download, Extract DevKit &Install 
    Download: 
```	
    Extract in Ruby folder 
    Install -- cmd (go to DevKit folder, search for cmd, the cmd will open with that path)
    cd \Ruby\devkit
    ruby dk.rb init
    ruby dk.rb install
```

3) Install libraries (gems) 
```
 C:\Users\you> gem install --no-ri --no-rdoc rspec
 C:\Users\you> gem install --no-ri --no-rdoc win32console
 C:\Users\you> gem install --no-ri --no-rdoc watir-webdriver
 C:\Users\you> gem install --no-ri --no-rdoc cucumber
 C:\Users\you> gem install selenium-webdriver
```

4) Install watir 

``` 
gem update --system --no-rdoc --no-ri
gem install watir --no-rdoc --no-ri
```
5) Install Firefox web browser 
 
6) Run the program 

7) Error -- on firefox connection not trusted 
    Commercial Antivirus blocks the encrypted connected and hence will not allow the execution of the program 
    Disable "scan encrypted connectes" option from the "scan- networks" in antivirus. restart the computer and execute the program again. 

8) Once it is all done run the demo.rb file using "ruby demo.rb" commmand, Below will be the output

```
Screen-reader users, click here to turn off Google Instant.
Gmail
Images




Sign in
×
Yes, show me


XOXOX
XOXOX
XOXOX
XOXOX
XOXOX
XOXOX
XOXOX
Privacy
Terms
Settings





Use Google.com
Advertising
Business
About
https://www.google.co.in/?gfe_rd=cr&ei=lcazWNzTNcP08wej2rKwAw&gws_rd=ssl#q=WebDriver+rocks!&*
Google
Test pass for WebDriver books
Test fail for Wiki page
Test fail for Google Browser title
Test fail for Bing Browser title

CSS of result stats text
arial,sans-serif
13px
```

Some additional link for help:
https://github.com/mozilla/geckodriver/releases

To run all tests if you are planning to add 
E:\Watir>rspec

#Instructure to run a search example, Geo location based

1) Struture of the code file
```
All my default location is E:\Watir> (You can make changes according to your machine)
Actual source: twitterGeo.rb
Bat file to execute the source: eachtwitterGeo.bat
Input file with search parameters: AllTagsGeo.csv
Bat file to execute multiple instance : 03GeoTwitter.bat
Output folder : tweetsSearch\
```

2) To run the example double click on 03GeoTwitter.bat, It is important to have a look at how the input is structure in csv file.
Each letter is significant to the output you get. The other details will be updated in few days.


