#!/usr/bin/env ruby

#A simple word counter in a file
class WordCounter
    
    def initialize(file_name)
        @file = File.read(file_name)
        @array = @file.split
    end   

    
    def count
        my_count = @array.length
        puts "There are #{my_count} words in the file."
    end
    
    def uniq_count
       theCount = @array.uniq.length
    
        puts "There are #{theCount} unique words in the file."
    end
    
    def frequency
        count = {}
        @array.each do |word|
            if count[word]
                count[word] = count[word] + 1
            else
                count[word] = 1
            end
        end
        
        count.each {|word,value| puts "The word \"#{word}\" appeared #{value} time(s)"}
            
    end
    
end

if __FILE__ == $0
    
    myWordCount = WordCounter.new("test.txt")
    puts myWordCount.inspect
    myWordCount.count
    myWordCount.uniq_count
    myWordCount.frequency
end
    
