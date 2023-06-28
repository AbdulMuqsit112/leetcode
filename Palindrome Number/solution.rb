def is_palindrome(x)
  arr = x.to_s.chars
  if arr == arr.reverse
      return true
  end
  return false
end