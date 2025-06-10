# @param {String} s
# @return {Integer}
def max_difference(s)
nu = []
    i = 0
    while i < s.length
nu[i] = s[i].ord - "a".ord
    i+=1
    end
nu = nu.sort
c =1
    nu[nu.length] = -1
nuu = []
    j = 0
    i = 1
    while i < nu.length
if nu[i] != nu[i-1]
nuu[j] = c
    j+=1
c =1
else
c+=1
    end
i+=1
    end
i = 0
even  = []
    odd = []
    while i < nuu.length
even[even.length] = nuu[i] if nuu[i]%2 == 0 
odd[odd.length] = nuu[i] if nuu[i]%2 != 0
i+=1
    end
i = 0
    max = -10000000000000
while i < even.length
j = 0
    while j < odd.length

m = odd[j] - even[i]

max = m if max < m       
    j+=1
    end
i+=1
end

    return max
    
end