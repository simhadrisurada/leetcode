# @param {Integer[]} nums
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
i  = 0
nu = []
while i < nums.length
nu.push(i) if nums[i] == key
i+=1
end
i = 0
nu1 = []
    while i < nu.length
        j = nu[i] - k 
        while j <= nu[i]+k
            
        j+=1
        end
    i+=1
    end
i = 0

while i < nu.length
j = nu[i] - k
    while j <= nu[i]+k
        nu1.push(j)
    j+=1
    end
i+=1
end

nu1 = nu1.sort.uniq
nu2 = []
i = 0
while i < nu1.length
if nu1[i] >= 0 && nu1[i] < nums.length
nu2.push(nu1[i])
end
i+=1
end


return nu2
end