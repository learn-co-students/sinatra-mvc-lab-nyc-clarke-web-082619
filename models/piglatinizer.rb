require 'pry'
class PigLatinizer 
    # attr_reader :words

    # def initialize()
    #     @words = words
    # end


    def piglatinize_one_word(word)
        character_array = word.chars
        vowels = ["a", "e", "i", "o", "u"]
        first_consonants = []

        if vowels.include?(character_array[0].downcase)
            piglatinized_word = word + "way"
        else
            n=0
            while n<character_array.length && !(vowels.include?(character_array[n])) do
                first_consonants << character_array[n]
                n += 1            
            end
            character_array.slice!(0..n-1)
            piglatinized_word = character_array.join + first_consonants.join + "ay"
        end
    end

    def piglatinize(words)
        if words.include?(" ")
            words_array = words.split(" ")
            all_words = []
            words_array.each do |string|
                all_words << piglatinize_one_word(string)
            end
            return all_words.join(" ")
        else
            piglatinize_one_word(words)
    
        end
    end


end

# binding.pry