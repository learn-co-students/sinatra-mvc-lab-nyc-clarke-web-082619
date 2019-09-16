class PigLatinizer
  
  def piggie_word(str)
    vowels = 'aeiou'
    return "#{str}way" if vowels.include?(str[0].downcase)
    str.each_char.with_index do |char, i|
      if vowels.include?(str[i].downcase) && i != 0
        return str[i..-1] + str[0...i] + 'ay'
      end 
    end
  end

  def piglatinize(sentence)
    if sentence.split(' ').length == 1
      piggie_word(sentence)
    else
      sentence.split.map{|word| piggie_word(word)}.join(' ')
    end
  end
  
end