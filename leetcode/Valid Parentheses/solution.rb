# Solution #!

def is_valid(s)
  char_arr = s.chars
  return false unless char_arr.length % 2 == 0
  pranthesis_hash = {'(':')', '[':']', '{':'}'}
  stack = []
  char_arr.each do |char|
    if pranthesis_hash.key?(char.to_sym)
      stack.push(char)
    else
      last = stack.last
      if last && pranthesis_hash[last.to_sym] == char
          stack.pop
      else
          return false
      end
    end
  end
  return true if stack.length == 0
  false
end

#solution #2

def is_valid(s)
  char_arr = s.chars
  return false unless char_arr.length % 2 == 0
  pranthesis_hash = {'(':')', '[':']', '{':'}'}
  stack = []
  char_arr.each do |char|
    if char == '(' || char == '{' || char == '['
      stack.push(char)
    else
      last = stack.last
      if last && pranthesis_hash[last.to_sym] == char
        stack.pop
      else
        return false
      end
    end
  end
  return true if stack.length == 0
  false
end