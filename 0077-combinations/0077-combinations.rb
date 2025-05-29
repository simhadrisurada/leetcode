# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
$nu = []
def check(i,n,nu,k)
if i == n
if nu.length == k
$nu.push(nu)
end
return 
end
check(i+1,n,nu + [i+1],k)
check(i+1,n,nu,k)
end
def combine(n, k)
check(0,n,[],k)
   nu = $nu
    $nu = []
    return nu
end