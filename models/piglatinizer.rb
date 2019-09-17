class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        result = ""
        text.split(" ").each do |word|
            if vowel?(word[0])          # the first letter is a vowel, add the whole string + "way"
                result << word << "way " 
            else
                index = 0;
                consonants = ""
                while index < word.length && !vowel?(word[index]) do    # loop until end of the word or vowel is reached
                    consonants << word[index]
                    index += 1 
                end
                result << word[index..-1] << consonants << "ay "  # reached the end of the word or reached a vowel 
            end
        end
        result.strip  
    end

    def vowel?(character)
        character.downcase == 'a' || character.downcase == 'e' ||character.downcase == 'i' ||character.downcase == 'o' ||character.downcase == 'u' ? true : false  
    end

end