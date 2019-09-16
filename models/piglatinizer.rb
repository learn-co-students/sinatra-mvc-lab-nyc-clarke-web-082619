class PigLatinizer

    def piglatinize_one_word(word)
        first_letter = word[0].downcase
        vowels = "aeiouy"
        new_word = ""
        if vowels.include?(first_letter)
           new_word =  word + "way"
        else
            letters = word.split("")
            first_vowel = letters.find {|letter| vowels.include?(letter)}
            first_vowel_index = word.index(first_vowel)
            first = word.slice(first_vowel_index..)
            last = word.slice(0..(first_vowel_index -1))
            new_word = first + last + "ay"
        end
        new_word
    end
    def piglatinize(string)
        if string.include?(" ")
            pieces = string.split(" ")
            fixed = []
            pieces.each do |word|
            fixed << piglatinize_one_word(word)
            end
            fixed.join(" ")
        else
            piglatinize_one_word(string)
        end
    end

            

end