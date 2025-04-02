# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
 i = 0
 max = 0
  while i < nums.length
    j = i+1
    while j < nums.length
        k = j+1;
        while k < nums.length
            max = [max,(nums[i]-nums[j])*nums[k]].max
        k+=1
        end
    j+=1
    end
i+=1
end
   return max 
end