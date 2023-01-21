def search_insert(nums, target)
  count = nums.index(target)
  if count.nil?
      nums.push(target)
      arr = nums.sort()
      count = arr.index(target) 
  end
  count
end