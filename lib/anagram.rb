class Anagram
  attr_accessor :check_word
  
  def initialize(check_word)
    @check_word = check_word
  end 
  
  def match(find_anagram_in_this_string) 
    puts "Must find #{self.check_word} inside the following string: #{find_anagram_in_this_string}"
    find_anagram_in_this_string.find_all do |word| 
      if word.split("").sort == self.check_word.split("").sort 
        word 
      end
    end 
  end
  
end 


listen = Anagram.new("listen")
listen.match(%w(enlists google inlets inlest banana))