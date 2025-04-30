# @param {Integer[]} nums
# @return {Integer[][]}
$ans = []
def check(cur,len,nu,arr,i)
if cur == len
$ans.push(nu.sort) 
return 
end
check(cur+1,len,nu+[arr[i]],arr,i+1)
check(cur+1,len,nu,arr,i+1)
end
def subsets_with_dup(nums)
    check(0,nums.length,[],nums,0)
    nu = $ans
    $ans = []
    return nu.uniq
end