class PigLatinizer
  require 'pry'
  attr_accessor :word

  def piglatinize(word)
    @word = word.downcase
     # binding.pry
  end

  def splitter
    shifting = word.split("")
    beginning_letter = shifting.shift
    shifting << beginning_letter
    shifting << "a"
    shifting << "y"
    shifting.join
  end



end
