class PigLatinizer 



    def piglatinize(string)
        array = string.split(' ')
        newarray= []
        added= ''
        vowels = ['a','e','i','o','u','A','E','I','O','U']
        array.each{ |string|
            if vowels.include?(string[0])
                added = "way"
            elsif !vowels.include?(string[0]) && !vowels.include?(string[1]) && !vowels.include?(string[2]) && string.length > 3
                added = string[0] + string[1] + string[2]+ "ay"
                string[0]=''
                string[0]=''
                string[0]=''
            elsif !vowels.include?(string[1]) && !vowels.include?(string[0]) 
                added = string[0] +string[1]+ "ay"
                string[0]=''
                string[0]=''
            else
                added = string[0]+"ay"
                string[0]=''
            end
            newarray << string += added
        }
        newarray.join(" ")
    end



end