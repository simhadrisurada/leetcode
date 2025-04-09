# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
nums = nums.uniq.sort
    if nums[0]<k
        return -1
    end
    if nums[0] > k
    return nums.length
    end
    if nums[0] == k
        return nums.length - 1
    end
    
end