# Solution #1
def remove_duplicates(nums)
  arr = nums.uniq!
  arr.count if arr
end

# Solution #2
def remove_duplicates(nums)
  nums.uniq!
  nums.count if nums
end
