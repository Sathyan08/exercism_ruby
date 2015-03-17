class Bob

  def hey(remark)

  end


end

class Statement

  def new(input)
    @string = input
  end

  def type
    return :silence if silence?
    return :yelling if yelling?
    return :question if question?
    :statement
  end

  private

  def silence?
    @string.blank?
  end

  def yelling?
    has_capitalized? && all_caps?
  end

  def question?
    @string.chars.last == '?'
  end

  def has_capitalized?
    @string.scan(/A-Z/).count > 0
  end

  def all_caps
    @string.upcase == @string
  end

end
