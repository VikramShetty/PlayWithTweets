require './lib/Tags'

class ReadTags
    def initialize(filename)
     @filename = filename
     @tags = Tags.new
    end

    def Read()
    	filetext = ""
     	File.foreach(@filename).with_index do |line, line_num|
     		filetext = filetext + line ;
        end
        return filetext
    end

    def LoadTags()		
		Read().each_line.each_with_index  do |line, line_num|
    		@tags.Add(line.tr("\n",""))    		
    	end
    end

    def AllTags()
    	return @tags.All()
    end

    def Count()
        return @tags.Count()
    end
end	
