class PigLatinizer
  require 'pry'
  attr_accessor :word

  def piglatinize(word)
    @word = word.downcase
    shifting = word.split("")
    beginning_letter = shifting.shift
    # binding.pry
    if beginning_letter.scan(/\A[^aeiou]/)
      vowel
    elsif beginning_letter.scan(/\A[^bcdfghjklmnpqrstvwxyz]/)
      second_letter = shifting.shift
      # binding.pry
      if second_letter.scan(/\A[^bcdfghjklmnpqrstvwxyz]/)
      consonant_cluster
      # second_letter = shifting.shift
    # elsif second_letter.scan(/\A[^bcdfghjklmnpqrstvwxyz]/)
    #   consonant_cluster
      else
        consonant
      end
    end
  end
  # def initialize(word)
  #   @word = word.downcase
  #    # binding.pry
  # end

  def consonant
    shifting = word.split("")
    beginning_letter = shifting.shift
    if beginning_letter.scan(/\A[^bcdfghjklmnpqrstvwxyz]/)
      shifting << beginning_letter
      shifting << "a"
      shifting << "y"
      shifting.join
    else
      puts "nope please type another word(s)"
    end
  end

  def consonant_cluster
    shifting = word.split("")
    beginning_letter = shifting.shift
    if beginning_letter.scan(/\A[^bcdfghjklmnpqrstvwxyz]/)
      second_letter = shifting.shift
      if second_letter.scan(/\A[^bcdfghjklmnpqrstvwxyz]/)
        shifting << beginning_letter
        shifting << second_letter
        shifting << "a"
        shifting << "y"
        shifting.join
      else
        puts "nope please type another word(s)"
      end
    end
  end

  def vowel
    shifting = word.split("")
    # beginning_letter = shifting.shift
    # if beginning_letter.scan(/\A[^aeiou]/)
    # shifting << beginning_letter
    shifting << "a"
    shifting << "y"
    shifting.join
  # end
  end

end
