# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_subarrays(nums, k)
maxi = nums.max
nu = []
i =0
while i  < nums.length
nu.push(i+1) if nums[i] == maxi
i+=1
end
return 0 if nu.length == 0
i = 0
nuu = nu
nu = nu.reverse
## making front array##
while i < nu.length - 1
nu[i] = nu[i] - nu[i+1]
i+=1
end
######################
count = 0
i = 0
## making back array###
while i < nuu.length
nuu[i] = nums.length - nuu[i] + 1
i+=1
end
#######################
nu = nu.reverse
i = 0
j = k-1
######## calculating by front and back possibilities #####
while j < nuu.length
count+=(nu[i]*nuu[j])
i+=1
j+=1
end
#########################################################
    return count
end