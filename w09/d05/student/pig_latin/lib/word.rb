class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def piglatinize
    if vowel? @original_word
      @original_word + "way"
    else
      word_array = @original_word.chars
      first_letter = word_array.shift
      first_letter += word_array.shift until (vowel?(word_array.join) || word_array.first == 'y')
      word_array.join + first_letter + 'ay'
    end

  end

  def vowel?(word)
    ['a','e','i','o','u'].include? word.chars.first
  end


end
