class Exercise
  def find(text)
    @palindromes = []
    1.upto(text.size - 1) do |idx|
      find_for(text, idx, 0, 1)
      find_for(text, idx, 1, 0)
    end

    @palindromes.sort_by{|palindrome| -palindrome.size}.first
  end

  def find_for(text, idx, even, start_range)
    start_range.upto([text.size - idx, idx].min) do |range|
      break if text[idx-even-range] != text[idx+range]
      @palindromes << text[idx-even-range..idx+range]
    end
  end
end
