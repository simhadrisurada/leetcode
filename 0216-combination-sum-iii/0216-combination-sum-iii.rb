# @param {Integer} k
# @param {Integer} n
# @return {Integer[][]}
$nu = []
def check(k,num,i,pre,n)
if i == 9
if num.length == k && pre == n
$nu.push(num)
end
return
end
check(k,num+[i+1],i+1,pre+i+1,n)
check(k,num,i+1,pre,n)
end
def combination_sum3(k, n)
check(k,[],0,0,n)
nu =$nu
$nu = []
return nu
end