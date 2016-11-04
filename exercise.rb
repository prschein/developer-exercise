class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)

    upAlpha = ('A'..'Z')

    result = str.split.each do |word|
      if word.length > 4 
        punct = word.match(/[[:punct:]]$/)
        if upAlpha.include? word[0]
          word.replace ('Marklar' + punct.to_s)
        else
          word.replace ('marklar' + punct.to_s)
        end
      end
    end

    return result.join(" ")

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)

    a = [1,1]
    i = 1

    while i < (nth - 1) do
      a.push(a[i] + a[(i-1)])
      i += 1
    end

    sum = 0

    a.each do |i|
      if i.even?
        sum = sum + i 
      end
    end

    return sum

  end

end
