#Solution 1
def reverse(x)
  num = x.to_s.reverse.to_i
  return 0 if num > 2147483647 || num< -2147483647
  return num * -1 if x.negative?
  num
end

#Solution 2

def reverse(x)
  num = x.to_s.reverse.to_i
  return 0 if num > 2147483647 || num< -2147483647
  num = num * -1 if x.negative?
  num
end