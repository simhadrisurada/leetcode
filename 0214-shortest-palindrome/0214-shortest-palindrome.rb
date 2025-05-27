# @param {String} s
# @return {String}
def shortest_palindrome(s)
s1 = s
s2 = s.reverse
i  = 0
j = s.length 
while i < s.length

if s1.start_with?(s2[i..j])
break
end
i+=1
end
nu = []
s2 = s2[i..j]
while s1[s2.length] != nil
nu.push(s1[s2.length])
s2+=s1[s2.length]
end
nu = nu.reverse.join
 return nu+s2
end