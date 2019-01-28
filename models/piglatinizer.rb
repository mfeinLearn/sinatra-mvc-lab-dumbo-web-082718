class PigLatinizer
  require 'pry'
  attr_accessor :word

  def piglatinize(word)

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

  def sentence_spliter
  #  .split(' ')
  end

  def consonant
    shifting = word.split("")
    beginning_letter = shifting.shift
      shifting << beginning_letter
      shifting << "a"
      shifting << "y"
      shifting.join
  end

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
