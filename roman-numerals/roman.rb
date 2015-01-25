require_relative 'roman_module'

class Fixnum
  include Roman

  def thousands_value
    self / 1000
  end

  def hundreds_value
    (self % 1000) / 100
  end

  def tens_value
    (self % 100) / 10
  end

  def ones_value
    (self % 10)
  end

  def thousands_roman
    thousands_map[thousands_value].nil? ? '' : thousands_map[thousands_value]
  end

  def hundreds_roman
    hundreds_map[hundreds_value].nil? ? '' : hundreds_map[hundreds_value]
  end

  def tens_roman
    tens_map[tens_value].nil? ? '' : tens_map[tens_value]
  end

  def ones_roman
    ones_map[ones_value].nil? ? '' : ones_map[ones_value]
  end

  def to_roman
    thousands_roman + hundreds_roman + tens_roman + ones_roman
  end

end
