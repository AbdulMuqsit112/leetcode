def expand_from_center(s, left, right)
  while left >= 0 && right < s.length && s[left] == s[right]
    left -= 1
    right += 1
  end
  s[(left + 1)...right]
end

def longest_palindrome_expand_center(s)

  longest = ""

  s.length.times do |i|
    # Odd-length palindromes
    palindrome1 = expand_from_center(s, i, i)
    # Even-length palindromes
    palindrome2 = expand_from_center(s, i, i + 1)

    # Update the longest palindrome
    longest = [longest, palindrome1, palindrome2].max_by(&:length)
  end

  longest
end



def longest_palindrome(s)
    return s if s.length < 2
    return s if s.reverse == s
    longest_palindrome_expand_center(s)
end