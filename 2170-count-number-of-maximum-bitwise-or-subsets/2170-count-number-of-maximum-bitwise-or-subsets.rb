# @param {Integer[]} nums
# @return {Integer}
$maxi = 0
def check(nums,i,r,axi)
if i >= nums.length
$maxi += 1 if axi == r
return 
end
check(nums,i+1,r,axi)
check(nums,i+1,r|nums[i],axi)

end
def count_max_or_subsets(nums)
maxi = 0
i = 0
while i < nums.length 
maxi = maxi | nums[i]
i+=1
end
check(nums,0,0,maxi)
ans = $maxi
$maxi = 0
return ans
end