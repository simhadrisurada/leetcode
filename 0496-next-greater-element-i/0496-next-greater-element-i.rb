# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def get_gre(nu,st)
i = st
while i < nu.length
return nu[i] if nu[st] < nu[i]
i+=1
end
return -1
end
def next_greater_element(nums1, nums2)
hash = Hash.new
i = 0
while i < nums1.length
hash[nums1[i]] = 0
i+=1
end
i = 0
while i < nums2.length
hash[nums2[i]] = i if hash[nums2[i]] != nil
i+=1
end
nu = []
i = 0
hash.each_key do|key|
nu[i] = get_gre(nums2,hash[key])
i+=1
end

return nu

end