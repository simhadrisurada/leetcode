# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
hash = Hash.new
nums = words
i = 0
while i < nums.length
if hash[nums[i]] == nil
hash[nums[i]] = 1
else
hash[nums[i]] += 1
end
i+=1
end
nu = []
hash1 = Hash.new
hash.each_key do|key|
if hash1[hash[key]] == nil
hash1[hash[key]] = [key]
else
hash1[hash[key]] += [key]
end
end
hash1 = hash1.sort
 i = hash1.length - 1
 while i >= 0
 nu+=(hash1[i][1].sort)
 i-=1
 end
 return nu[0,k]
end