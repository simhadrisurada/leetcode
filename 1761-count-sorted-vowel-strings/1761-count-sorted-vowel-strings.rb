# @param {Integer} n
# @return {Integer}
def fun(nu,k,j)
return nu if k >= j
i = 1
while i < nu.length
nu[i]+=nu[i-1]
i+=1
end
return fun(nu,k+1,j)
end
def count_vowel_strings(n)
nu = [1]*5
return fun(nu,0,n)[4]
    
end