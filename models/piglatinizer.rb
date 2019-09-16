require 'pry'
class PigLatinizer
    def Self.piglatinize(text)
        word_array = split_words_into_array(text)
        entencesay = word_array.map do |word|
            if is_vowel?(word[0])
                piglatinize_vowel_word(word)
            elsif is_consonant?(word[0])
                piglatinize_consonant_word(word)
            else
                word
            end
        end

        entencesay.join(' ')
    end

    def self.split_words_into_array(text)
        text.split(" ")
    end

    def self.is_vowel?(letter)
        if 'aeiouAEIOU'.include?(letter)
            return true
        else
        return false
        end
    end

    def self.is_consonant?(letter)
        if 'bcdfghjklmnpqrstvwxyzBCDFKGHJKLMNPQRSTVWXYZ'.include?(letter)
            return true
        else
            return false
        end
    end

    def self.piglatinize_vowel_word(word)
        word += 'way'
    end

    def self.piglatinize_consonant_word(word)
        starting_phoneme = []
        letters = word.split('')


        while !is_vowel?(letters[0]) do
            starting_phoneme << letters.shift
        end


        starting_phoneme.each do |char|
            letters << char
        end

        new_word = letters.join
        new_word += 'ay'

        new_word
    end
end