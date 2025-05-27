# @param {Integer} n
# @param {Integer} m
# @return {Integer}
def difference_of_sums(n, m)
k = m
m = n/m
n = n*(n+1) / 2

div = (2*k) + ((m-1)*k)
div*=m
div/=2
return n - (div*2)  
end