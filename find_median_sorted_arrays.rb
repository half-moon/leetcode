# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    num=(nums1+nums2).sort
    (num[num.size/2]+num[(num.size-1)/2])/2.to_f
end