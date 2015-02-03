require_relative 'word_check'

class Phrase
  include WordCheck

  attr_reader :words

  def initialize(words)
    @words = normalized(words)
    @count = { }
    @counted = false
  end

  def normalized(words)
    words.gsub!(/\W/, ' ')
    words.downcase.split
  end

  def tabulate
    @words.each { |word| word_check(word) }
    @counted = true
    @count
  end

  def word_count
    @counted ? @count : tabulate
  end

end
