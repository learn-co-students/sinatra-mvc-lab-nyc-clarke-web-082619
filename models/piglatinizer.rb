class PigLatinizer 
    attr_accessor :words

    def piglatinize(input_string)
        input_string.split(" ").length == 1 ? piglatinize_word(input_string) : piglatinize_sentence(input_string)
    end 

    def consonant?(letter)
        !letter.match(/[aAeEiIoOuU]/)
    end 

    def piglatinize_word(word)
        a = word.split("")
        if a.length == 1
            a << "way"
        elsif consonant?(a[0]) && consonant?(a[1]) && consonant?(a[2])
            b = a.shift 
            c = a.shift 
            d = a.shift
            a << b + c + d + "ay"
        elsif consonant?(a[0]) && consonant?(a[1])
            b = a.shift 
            c = a.shift 
            a << b + c + "ay"
        elsif consonant?(a[0])
            b = a.shift 
            a << b + "ay"
        elsif !consonant?(a[0])
            a << "way"
        end 
        a.join  
    end 

    def piglatinize_sentence(input_string)
        input_string.split.collect {|word| piglatinize_word(word)}.join(" ")
    end 
end 