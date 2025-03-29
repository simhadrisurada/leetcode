# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
nu = [0]*s.length
arr = []

i = 0
while  i < s.length
n = arr.last
if s[i] == "("
arr.push(["(",i])
else
if n != nil && n[0] == "("
nu[n[1]] = 1
nu[i] = 1
arr.pop
end
end
i+=1
end
i = 0 
ans = 0
max = 0
while i < nu.length
if nu[i] == 1
ans+=1
else 
ans = 0
end
max = ans if max < ans
i+=1
end
return max
    
end