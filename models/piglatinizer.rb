class PigLatinizer
    def piglatinize(string)
        arr = string.split(" ")
        arr.map{|x| one_word(x)}.join(" ")
    end

    def one_word(word)
        str = ""
        vowel = 0
        word.split("").each{|x| 
                    if "aeiouAEIOU".include?(x)
                        vowel+=1
                    elsif vowel == 0
                        str += x
                    end
                }
        #word.scan(/[bcdfghjklmnpqrstvwxyz]/){|x| str+= x}
        if str != ""
            word = word[str.length..word.length-1] + str + "ay"
        else
            word = word + "way"
        end
        word
    end
end