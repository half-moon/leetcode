# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash=Hash.new
    nums.each_with_index{|value,key|hash[value]==nil or return [hash[value],key+1] and hash[target-value]=key+1 }
end