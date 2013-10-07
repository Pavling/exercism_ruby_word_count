class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = split_phrase
    words.inject({}) do |memo, word|
      memo[word] ||= 0
      memo[word] += 1
      memo
    end
  end

  private
  def split_phrase
    @phrase.split
  end
end

