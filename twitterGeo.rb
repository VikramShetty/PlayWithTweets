require 'watir'
require './lib/ReadTags'
require 'date'

browser = Watir::Browser.new:firefox

reader = ReadTags.new(ARGV[0])
    reader.LoadTags()   
    allTags = reader.AllTags()
    counter = 1
 allTags.each do |eachTag|
puts "index: #{counter.to_s} of 27, Tag: #{eachTag}"                
counter+=1
browser.goto "https://twitter.com/search?q=" + eachTag
browser.window.maximize
page = 0
250.times do
  browser.execute_script("window.scrollBy(0,2000);")  
end 

tweetContent = String.new
filename = String.new
finalfilename = String.new

time = Time.now.to_s
finalfilename = 'E:\Watir\tweetsSearch\\' + Time.now.to_i.to_s +  '_' + eachTag[45..54] + '_tweets.csv'
open(finalfilename, 'a') { |f|  
tweetContent += 'TweetId,UserName,ScreenName,UserID,TweetText,Reply,Retweet,Empty,Like,Empty,Tweeted On,Tag,Link,Tweeted Datetime,Lat,Long'

f.puts tweetContent
  browser.divs(:class => 'tweet js-stream-tweet js-actionable-tweet').each do  |tweet|   
   begin 
  	tweetContent = ''

    begin 
     tweetattributes = browser.execute_script(%Q[ var s = []; var localAttrs = {}; var attrs = arguments[0].attributes; for (var l = 0; l < attrs.length; ++l) {  var a = attrs[l]; localAttrs[a.name] = a.value; s.push(localAttrs);  } ; return s;], tweet)    
    tweetContent  += '"' + tweetattributes[0]['data-tweet-id'] + '",'
     tweetContent  += '"' +  tweetattributes[0]['data-name'] + '",'
     tweetContent  += '"' +  tweetattributes[0]['data-screen-name'] + '",' 
     #tweetContent  += '"' +  tweetattributes[0]['data-mentions'] + '",'
     tweetContent  += '"' +  tweetattributes[0]['data-user-id'] + '",'
    rescue Exception => e     
     
    end
     
    tweet.divs(:class => 'js-tweet-text-container').each do  |eachtweetText| 
      tweetContent  += '"' +  eachtweetText.text + '",'
     end

   	tweet.spans(:class => 'ProfileTweet-actionCountForPresentation').each do  |ref| 
      tweetContent  += '"' +  ref.text + '",'
     end

     tweet.links(:class => 'tweet-timestamp js-permalink js-nav js-tooltip').each do |actLink|    
       tweetContent += '"' + actLink.text.tr("\n","")  + '",' + eachTag + ',' + actLink.href.tr("\n","") 

        attributes = browser.execute_script(%Q[ var s = []; var attrs = arguments[0].attributes; for (var l = 0; l < attrs.length; ++l) {  var a = attrs[l]; s.push(a.value);  } ; return s;], actLink)    
        tweetContent += ',"' + attributes[1].tr("\n","") + '"'
      end     
      
     tweetContent += "," + eachTag[10..17]
     tweetContent += "," + eachTag[21..28]
     
     f.puts tweetContent 
  rescue Exception => e
     puts "An error of type #{e.class} happened, message is #{e.message}"
     puts ''
     puts tweetContent
     next
end

  end

}

 end  


browser.close
exit