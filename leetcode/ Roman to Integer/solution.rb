def roman_to_int(s)
  total = 0
  hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  s.chars.each_with_index do |char, index|
    if index > 0 && hash[char] > hash[s[index - 1]]
        total += hash[char] - 2 * hash[s[index - 1]]
    else
        total += hash[char]
    end
  end
  return total
end