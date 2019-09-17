class PigLatinizer

    def consonant(character)
        # character.scan(/[bcdfghjklmnpqrstvwxyz]/)
        !character.match(/[aAeEiIoOuU]/)
    end
    
    def piglatinize(user_input)
        if user_input.split(" ").count == 1
            piglatinize_word(user_input)
        else
            piglatinize_sentence(user_input)
        end
    end

    def piglatinize_word(word)
        if !consonant(word[0])
            word = word + "way"
        elsif consonant(word[0]) && consonant(word[1]) && consonant(word[2])
            word = word.slice(3..-1) + word.slice(0,3) + "ay"
        elsif consonant(word[0]) && consonant(word[1])
            word = word.slice(2..-1) + word.slice(0,2) + "ay"
        else
            word.slice(1..-1) + word.slice(0) + "ay"
        end
    end

    def piglatinize_sentence(sentence)
        sentence.split.collect{ |word| piglatinize_word(word)}.join(" ")
    end

end