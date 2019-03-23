class Anagram
  attr_accessor :check_word
  
  def initialize(check_word)
    @check_word = check_word
  end 
  
  def match(find_anagram_in_string) 
    puts "Must find #{self.check_word} inside the string: #{find_anagram_in_string}"
    find_anagram_in_string.find_all do |word| 
      if word.split("").sort == self.check_word.split("").sort 
        word 
      end
    end 
  end
end 


