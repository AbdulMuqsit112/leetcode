# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  arr = nums1 + nums2
  arr.sort!
  length = arr.count
  if length % 2 == 0
      median_index = length/2
      return (arr[median_index] + arr[median_index - 1]) / 2.0
  end
  median_index = (length - 1)/2
  return arr[median_index]
end