#Solution 1

def single_number(nums)
  count = Hash.new(0)
  
  nums.each do |element|
    count[element] += 1
  end
  
  count.each do |key, value|
    if value == 1
      return key
    end
  end
  return nil
end

# Solution 2

def single_number(nums)
  count = Hash.new(0)
  nums.each { |n| count[n]+=1 }
  count.key(1) 
end