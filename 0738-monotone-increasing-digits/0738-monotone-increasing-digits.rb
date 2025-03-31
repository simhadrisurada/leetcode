# @param {Integer} n
# @return {Integer}
def monotone_increasing_digits(n)
nu = []
while n != 0
nu.push(n%10)
n/=10
end
nu = nu.reverse
stack = []
i = 0
while i < nu.length
    if stack.length == 0 || stack.last <= nu[i]
        stack.push(nu[i])
    elsif nu[i] == -1
        break 
    else
    nu[i-1]-=1
    nu[i] = -1
    stack.pop

    i-=2
    end
i+=1
end
flag = 0
i = 0
while i < nu.length
if nu[i] == -1
flag = 1
end
nu[i] = 9 if flag == 1
i+=1
end
return nu.join('').to_i
end