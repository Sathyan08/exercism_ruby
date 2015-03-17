require 'pry'

class Bob

  def hey(remark)
    interpretation = interpret(remark)
    response_map[interpretation]
  end

  private

  def interpret(remark)
    StatementType.new(remark).call
  end

  def response_map
    map = {
      silence: 'Fine. Be that way!',
      yelling: 'Whoa, chill out!',
      question: 'Sure.',
      statement: 'Whatever.'
    }
  end

end

module StringReader
  def initialize(string)
    @string = string
  end
end

class StatementType
  include StringReader

  def call
    return :silence if SilenceTest.new(@string).call
    return :yelling if YellingTest.new(@string).call
    return :question if QuestionTest.new(@string).call
    :statement
  end

end

class SilenceTest
  include StringReader

  def call
    test = @string.strip
    test.empty?
  end

end

class YellingTest
  include StringReader

  def call
    has_capitalized? && all_caps?
  end

  private

  def has_capitalized?
    @string.scan(/[A-Z]/).count > 0
  end

  def all_caps?
    @string.upcase == @string
  end

end

class QuestionTest
  include StringReader

  def call
    @string.chars.last == '?'
  end

end



s = StatementType.new(' ').call
puts s
