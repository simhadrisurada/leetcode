# @param {Integer} n
# @return {Integer[]}
$nu = []
$u = 0
def make(n)
i = 1 
while i <= n
$nu.push(i.to_s)
i+=1
end
end
def lexical_order(n)
if $u == 0
make(5*(10**4))
$u = 1
end
nu = $nu[0,n]
nu = nu.sort
 i = 0
 while i < n
nu[i] = nu[i].to_i
i+=1
end
return nu
end