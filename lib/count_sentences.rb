require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    my_array = self.split(/[.?!]+/)
    num = 0
    count = 0
    while num < my_array.length
      if self.end_with?("!") || self.end_with?(".") || self.end_with?("?")
        count += 1
      end
      num += 1
    end
    count
  end

end