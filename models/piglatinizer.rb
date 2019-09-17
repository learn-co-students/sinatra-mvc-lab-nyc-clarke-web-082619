class PigLatinizer

    # def initialize(string)
    #     @string = string.downcase
    # end

    def pig_word(string)
        vowels = "aeiou"
            if vowels.include?(string[0].downcase)
                return string + "way"
            end
            string.each_char.with_index do |char, i|
                if !vowels.include?(string[i]) && vowels.include?(string[i+1])
                behind = string.slice(0..i)
                string.slice(i+1..-1)+ behind + "ay"
                return string.slice(i+1..-1) + behind + "ay"
                end
            end
    
    end

    def piglatinize(string)
        if string.split(" ").length == 1
            pig_word(string)
        else 
            array = string.split(" ").map {|word|pig_word(word)}
            
            array.join(" ")
        
        end
    end
   
end