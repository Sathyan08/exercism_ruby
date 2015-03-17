class Bob


end

class Question

  def new(input)
    @string = input
  end

  def type
    silence? ? :silence : speech_test
  end

end
