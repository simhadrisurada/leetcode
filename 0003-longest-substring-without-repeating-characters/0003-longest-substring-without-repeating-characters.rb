# @param {String} s
# @return {Integer}
def length_of_longest_substring(s) 
i = 0
max = 0
while i < s.length 
hash = Hash.new
ans = 0
    while hash[s[i]] == nil && i < s.length
    hash[s[i]] = i
    ans+=1
    i+=1
    end
    max = ans if ans > max
    i = hash[s[i]] + 1 if i < s.length
    i-=1
i+=1
end
return max
end