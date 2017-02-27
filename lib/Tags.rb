
class Tags

    def initialize()
     @alltags = Array.new
    end
    	
    def Add(eachTag)
        @alltags.push eachTag
    end 

    def All()
        return @alltags
    end

    def Count()
        return @alltags.length
    end 
end


