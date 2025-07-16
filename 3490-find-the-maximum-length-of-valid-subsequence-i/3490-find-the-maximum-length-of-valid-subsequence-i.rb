# @param {Integer[]} nums
# @return {Integer}
def cal(nums,n)
i = 0
cnt = 0
while i < nums.length 
if n == 1 && nums[i]%2 == 0
cnt += 1
n = 0
elsif n == 0 && nums[i]%2 == 1
cnt += 1
n = 1
end
i+=1
end
    return cnt
end
def maximum_length(nums)
i = 0
odd,even = 0,0
    while i < nums.length
        if nums[i]%2 == 0
            even += 1
        else
            odd += 1
        end
    i+=1
    end
    return [odd,even,cal(nums,1),cal(nums,0)].max

    
end