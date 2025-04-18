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
$u = 0
$answer = []
def arrange(n)
i = 1
nu = "1"
$answer.push(nu)
while i <= n-1
nu = check(nu)
$answer.push(nu)
i+=1
end
$u = 1
end
def count_and_say(n)
arrange(30) if $u == 0
return $answer[n-1]
end