# @param {Integer[]} nums
# @return {Integer[][]}
$nu = []
def check1(nums)
i = 1
while i < nums.length
return -1 if nums[i-1] > nums[i]
i+=1
end
return 0
end
def check(nums,i,nu)
if i >= nums.length
    if nu.length >= 2 && check1(nu) == 0
        $nu.push(nu)
    end
    return 
end

check(nums,i+1,nu+[nums[i]])
check(nums,i+1,nu)
end
def find_subsequences(nums)
check(nums,0,[])
nu = $nu
$nu = []
return nu.uniq
    
end