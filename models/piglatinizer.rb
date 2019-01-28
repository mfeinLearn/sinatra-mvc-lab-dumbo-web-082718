class PigLatinizer
  require 'pry'
  attr_accessor :word

  def piglatinize(entry)
    is_a_sentence?(entry)
  end

  def is_a_sentence?(entry)
      words = entry.split(' ')
      new_array = []
      see = words.each do |word|
        new_array << the_pig_latinizer(word)
      end
      #binding.pry if words.length > 1
      new_array.join(" ")
  end

  def the_pig_latinizer(word)
    # if word == "He"
    #   #binding.pry
    # end
    # shifting = word.split("")
    # beginning_letter = shifting.shift
    if word[0].scan(/[AEIOUaeiou]/).first
      vowel(word)
    elsif word[0].scan(/[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]/).first
      # if word == "He"
      #   #binding.pry
      # end
      if word[1].scan(/[bcdfghjklmnpqrstvwxyz]/).first
      consonant_cluster(word)
      else
        consonant(word)
      end
    end
  end

  def consonant(word)
    shifting = word.split("")
    beginning_letter = shifting.shift
      shifting << beginning_letter
      shifting << "a"
      shifting << "y"
      shifting.join
  end

  def consonant_cluster(word)

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

  def vowel(word)
    shifting = word.split("")
    shifting << "w"
    shifting << "a"
    shifting << "y"
    shifting.join
  end

end
