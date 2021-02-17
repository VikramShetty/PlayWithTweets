require 'watir'
require './lib/Tags'
require './lib/ReadTags'
require 'date'
client = Selenium::WebDriver::Remote::Http::Default.new
client.read_timeout = 300 # seconds – default is 60
client.open_timeout = 300 # seconds – default is 60

browser = Watir::Browser.new:firefox, :http_client => client

range = 0..13
sleeprange = 27..41
counter = 1
browser.goto "https://www.google.com/search?sxsrf=ALeKk02feUWuW675Y2sZ_-F5Vs4wiIYGJA:1595148585627&ei=KQkUX9zvJfTEz7sP5-SesAI&q=sustainability+consultant+jobs+New+york&oq=sustainability+manager+jobs+&gs_lcp=CgZwc3ktYWIQAzIECCMQJzIECCMQJzIECCMQJzICCAAyBQgAEIsDMgUIABCLAzICCAAyAggAMgIIADICCAA6BAgAEEdQ-1xY-1xgm2BoAHACeACAAX-IAX-SAQMwLjGYAQCgAQGqAQdnd3Mtd2l6uAEB&sclient=psy-ab&uact=5&ibp=htl;jobs&sa=X&ved=2ahUKEwiXyPbM99jqAhXW7XMBHfB2BHAQiYsCKAF6BAgLEBE&sxsrf=ALeKk00cXU2R3kIsKKc4nUDJMcJfMZw9IQ:1595148599148#fpstate=tldetail&htivrt=jobs&htilrad=-1.0&htidocid=HNWZPUnrf51H_3giAAAAAA%3D%3D"
browser.window.maximize

    
finalfilename = String.new
tweetContent = String.new
jobDesc = String.new
filename = String.new 
startedOn = Time.now
browser.execute_script("console.log('from the code');"); 
finalfilename = 'D:\Watir\LinkedInSearch\\' + Time.now.to_i.to_s +  '_Google_Jobs.sql'
open(finalfilename, 'a') { |f|      

    puts "X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X"
    f.puts 'USE [ClientEngagement]'
 
        sleepTime = rand(sleeprange)
        timeLapse = (Time.now - startedOn)/60
        puts "> "  + Time.new.hour.to_s + ":" + Time.new.min.to_s + " - #{sleepTime}  " + timeLapse.round(2).to_s + " min"
              
       
      begin

20.times do 
       browser.execute_script("objDiv = document.querySelector('.gws-plugins-horizon-jobs__tl-lvc'); console.log('scrollTop'); console.log(objDiv.scrollTop); console.log('scrollHeight'); console.log(objDiv.scrollHeight);  console.log('clientHeight'); console.log(objDiv.clientHeight); console.log('NEW top'); console.log(objDiv.scrollHeight - objDiv.clientHeight - 2); objDiv.scrollTop = objDiv.scrollHeight - objDiv.clientHeight - 2 + 500;"); 
       sleep(sleepTime/9)

end   
           sleep(sleepTime/9)
     
        #browser.divs(:class => ['BjJfJf','PUpOsf']).each do  |tweet|   
        browser.divs(:class => ['Fol1qc']).each do  |tweet|   
                begin 

                 tweetContent = 'Insert into GoogleJobs Values (N\''  
                 tweetContent += tweet.divs(:class => ['BjJfJf','PUpOsf']).last.text.tr("’'","") + '\',N\'' 
                 tweetContent += tweet.divs(:class => ['vNEEBe']).last.text.tr("’'","") + '\',N\''
                 tweetContent += tweet.divs(:class => ['Qk80Jf']).first.text.tr("’'","") + '\',N\'' 
                 tweetContent += tweet.divs(:class => ['Qk80Jf']).last.text.tr("’'","") + '\',N\'' 
                 tweetContent += tweet.divs(:class => ['KKh3md','zfZM7e']).last.text.tr("’'","") + '\',N\'' 
                 counter+=1      
                 puts counter
                 puts ""         
                tweet.click  
                jobDesc = browser.divs(:class => ['YgLbBe']).last.text.tr("’'","")

                                  
                puts browser.divs(:class => ['CdXzFe','j4kHIf']).last.click
                puts "---- IT CLICKED.........."
                #puts browser.divs(:class => ['YgLbBe']).last.text.tr("’'","")
                jobDesc = browser.divs(:class => ['YgLbBe']).last.text.tr("’'","")
                puts "---- IS this full text?.........."
               
              
                rescue Exception => e
                  puts "An error of type #{e.class} happened, message is #{e.message}"
                  puts ''
                  puts tweetContent
                  f.puts tweetContent + jobDesc
                  f.puts "\')"
                  f.puts "GO"
                  next
                end  

              f.puts tweetContent + jobDesc
                  f.puts "\')"
                  f.puts "GO"
          end

       #browser.execute_script("objDiv = document.querySelector('.gws-plugins-horizon-jobs__tl-lvc'); objDiv.scrollTop = objDiv.scrollTop + 5000;"); 
       #browser.execute_script("objDiv = document.querySelector('.gws-plugins-horizon-jobs__tl-lvc'); console.log('scrollTop'); console.log(objDiv.scrollTop); console.log('scrollHeight'); console.log(objDiv.scrollHeight);  console.log('clientHeight'); console.log(objDiv.clientHeight); console.log('NEW top'); console.log(objDiv.scrollHeight - objDiv.clientHeight - 2); objDiv.scrollTop = objDiv.scrollHeight - objDiv.clientHeight - 2;"); 
       #browser.execute_script("window.scrollBy(0, 5000);"); 
       
        

          f.puts tweetContent     
          f.puts "\')"
          f.puts "GO"
          
          
          rescue Exception => e
              puts "An error happened, message is #{e.message}"
              sleep(sleepTime/9)
          next
      end


}

browser.close
exit
#
=begin
CREATE TABLE [dbo].[PotentialClients](
  [link] [varchar](max) NULL,
  [post] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


=end
