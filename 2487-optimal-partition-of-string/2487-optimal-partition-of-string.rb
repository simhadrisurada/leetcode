# @param {String} s
# @return {Integer}
def partition_string(s)
i = 0
ans = 0
while i < s.length 
hash = Hash.new
    while hash[s[i]] == nil && i < s.length
    hash[s[i]] = 0
    i+=1
    end
    i-=1
    ans+=1
i+=1
end
    return ans
end