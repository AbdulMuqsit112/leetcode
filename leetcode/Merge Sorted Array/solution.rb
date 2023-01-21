def merge(nums1, m, nums2, n)
  nums1.pop(n)
  arr = nums1.concat(nums2)
  arr.sort!
end