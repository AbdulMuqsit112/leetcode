def two_sum(nums, target)
  h = Hash.new
  nums.each.with_index do |n,i|
    x = target - n
    return [h.key(x),i] if h.value?(x)
    h[i] = n
  end
end