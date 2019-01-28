class PigLatinizer
  require 'pry'
  attr_accessor :word

  def piglatinize(entry)
    is_a_sentence?(entry)
  end

  def is_a_sentence?(entry)
    if entry.match(" ")
      words = entry.split(' ')
      new_array = []
      see = words.each{ |word| new_array << the_pig_latinizer(word) }
      #binding.pry
      new_array.join(",").gsub(",",' ')
      #binding.pry
    else
      the_pig_latinizer(entry)
    end
  end

  def the_pig_latinizer(word)
    #binding.pry
    @word = word#.downcase
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

  def consonant_cluster

    shifting = word.split("")
     beginning_letter = shifting.shift
       second_letter = shifting.shift
       third_letter = shifting.shift
       if third_letter.scan(/[bcdfghjklmnpqrstvwxyz]/).first
        shifting << beginning_letter
        shifting << second_letter
        shifting << third_letter
        shifting << "a"
        shifting << "y"
        shifting.join
      else
        shifting.unshift(third_letter)
        shifting << beginning_letter
        shifting << second_letter
        shifting << "a"
        shifting << "y"
        shifting.join
    end
  end

  def vowel
    shifting = word.split("")
    shifting << "w"
    shifting << "a"
    shifting << "y"
    shifting.join
  end

end
