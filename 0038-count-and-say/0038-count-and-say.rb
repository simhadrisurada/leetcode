# @param {Integer} n
# @return {String}
def check(s)
i = 1
nu = []
s = s.split('')
count = 1
while i < s.length
if s[i] != s[i-1]
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
def count_and_say(n)
i = 1
nu = "1"
while i <= n-1
nu = check(nu)
i+=1
end
return nu

end