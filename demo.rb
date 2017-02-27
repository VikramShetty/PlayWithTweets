require 'watir'

#Full video @ https://www.youtube.com/watch?v=pvTxnTkhzIc&index=1&list=PLUY1lsOTtPeLYmr2u67BCYyIaZH_M75M3

# downloaded chomedriver from here http://chromedriver.storage.googleapis.com/index.html?path=2.23/
# Added the path in Environment variable
browser = Watir::Browser.new:firefox
#browser = Watir::Browser.new:phantomjs #For running all test without opening the web browser. It needs driver too.

browser.driver.manage.timeouts.implicit_wait = 5
browser.goto "http://google.com"

puts browser.links.collect(&:text) #prints all link text on command prompt

browser.text_field(name: 'q').set("WebDriver rocks!")
browser.button(:name=> 'btnG').click
puts browser.url
puts browser.title
sleep(2)

if browser.text.include? 'WebDriver books'
	print 'Test pass for WebDriver books'
else
	print 'Test fail for WebDriver books'
end
puts ''
if browser.text.include? 'Wiki page'
	print 'Test pass for Wiki page'
else
	print 'Test fail for Wiki page'
end
puts ''
if browser.title == 'Google'
	print 'Test pass for Google Browser title'
else
	print 'Test fail for Google Browser title'
end

puts ''
if browser.title == 'Bing'
	print 'Test pass for Bing Browser title'
else
	print 'Test fail for Bing Browser title'
end
puts ''
puts ''
puts 'CSS of result stats text'
puts browser.div(:id=>'resultStats').style 'font-family' 
puts browser.div(:id=>'resultStats').style 'font-size'
puts browser.div(:id=>'resultStats').style 'background'  

tex = browser.text_field :id=> 'lst-ib'
tex.exist?
tex.set 'WebDriver rocks'
tex.set '' #clearing the text
sleep(5)
browser.refresh
browser.window.maximize
sleep(1)
browser.window.resize_to(800,600)
sleep(1)
browser.window.move_to(100,200)
#puts browser.html  #It puts the html text of the page on command prompt
browser.screenshot.save 'screenshot.png'
browser.execute_script("window.scrollBy(0,2000);")
browser.close
#browser = Watir::Browser.new:ie for testing it in IE downloaded ie from http://selenium-release.storage.googleapis.com/index.html?path=2.53/