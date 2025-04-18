# @param {String} word
# @return {String}
def check(s)
i = 1
nu = []
s = s.split('')
count = 1
while i < s.length
if s[i] != s[i-1] || count >=9
nu.push(count)
nu.push(s[i-1])
count = 1
else 
count+=1
end
i+=1
end
nu.push(count)
nu.push(s[i-1])
return nu.join
end
def compressed_string(word)
return check(word)
end