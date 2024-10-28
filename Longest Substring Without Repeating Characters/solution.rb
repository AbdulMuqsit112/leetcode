# @param {String} s
# @return {Integer}

def remove_before_and_including(arr, value)
  index = arr.index(value)
  return arr if index.nil?
  arr.slice!(0..index)
  arr
end
def length_of_longest_substring(s)
  arr = []
  counter = []
  s.chars.each do |char|
      if arr.include?(char)
          counter.push(arr.count)
          arr = remove_before_and_including(arr, char)
      end
      arr.push(char)
  end
  counter.push(arr.count)
  counter.max
end