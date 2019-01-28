class PigLatinizer
  require 'pry'
  attr_accessor :word

def is_a_sentence?(word)
  if word.match(" ")
    word.split(' ')

  else
    piglatinize(word)
end

  def piglatinize(word)
    is_a_sentence?(word)
    binding.pry
    @word = word.downcase
    shifting = word.split("")
    beginning_letter = shifting.shift
    if beginning_letter.scan(/[AEIOUaeiou]/).first
      vowel
    elsif beginning_letter.scan(/[bcdfghjklmnpqrstvwxyz]/).first
      second_letter = shifting.shift
      if second_letter.scan(/[bcdfghjklmnpqrstvwxyz]/).first
      consonant_cluster
      else
        consonant
      end
    end
  end

  def consonant
    shifting = word.split("")
    beginning_letter = shifting.shift
      shifting << beginning_letter
      shifting << "a"
      shifting << "y"
      shifting.join
  end

  # def the_pig_latinizer
  #
  # end

  def consonant_cluster

    shifting = word.split("")
     beginning_letter = shifting.shift
       second_letter = shifting.shift
        shifting << beginning_letter
        shifting << second_letter
        shifting << "a"
        shifting << "y"
        shifting.join
    end

  def vowel
    shifting = word.split("")
    shifting << "w"
    shifting << "a"
    shifting << "y"
    shifting.join
  end

end
