# @param {Integer} n
# @return {Integer}
def sum(n,k)
return k if n == 0
return sum(n/10,k+(n%10))
end
def count_largest_group(n)
hash = Hash.new
i = 1
while i <= n
dummy = sum(i,0)
if hash[dummy] == nil
hash[dummy] = 1
else
hash[dummy]+=1
end
i+=1
end
hash1 = Hash.new
hash.each_key do|key|
if hash1[hash[key]] == nil
hash1[hash[key]] = 1
else
hash1[hash[key]] +=1
end
end
nu = hash1.max
return nu[1]
end