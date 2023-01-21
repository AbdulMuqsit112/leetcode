# solution #1

def remove_element(nums, val)
  nums.delete_if {|x| x == val}
  nums.count if nums
end

# solution #2

def remove_element(nums, val)
  nums.delete(val)
  nums.count if nums
end