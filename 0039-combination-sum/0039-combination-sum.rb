# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
$nu = []
def check(target,pre,nu,i,nums)
if pre >=  target || i >= nums.length
    if pre == target
        $nu.push(nu)
    end
return 
end
check(target,pre+nums[i],nu+[nums[i]],i,nums)
check(target,pre+nums[i+1],nu+[nums[i+1]],i+1,nums) if i+1 < nums.length
check(target,pre,nu,i+1,nums)
end

def combination_sum(candidates, target)
check(target,0,[],0,candidates)
nu = $nu
$nu = []
    return nu.uniq
end