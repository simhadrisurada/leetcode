# @param {Integer[]} p1
# @param {Integer[]} p2
# @param {Integer[]} p3
# @param {Integer[]} p4 
# @return {Boolean}
def give(a,b)
one = (a[0] - b[0])
two = (a[1] - b[1])
ab = Math.sqrt(((one*one) + (two*two)))
return ab
end
def check(nu1)
nu = []
nu2 = []
nu.push(give(nu1[0],nu1[1]))
nu.push(give(nu1[1],nu1[2]))
nu.push(give(nu1[2],nu1[3]))
nu.push(give(nu1[3],nu1[0]))
nu2.push(give(nu1[2],nu1[0]))
nu2.push(give(nu1[3],nu1[1]))
return nu.uniq.length == 1 && nu2.uniq.length == 1 && nu[0] != 0 &&nu2[0] != 0
end
def swap(nu,k,j)
    i = 0
    nu1 = []
    while i < nu.length
        if i  == k
        nu1.push(nu[j])
        elsif i == j
        nu1.push(nu[k])
        else
        nu1.push(nu[i])
        end
        i+=1
    end
return nu1
end
def valid_square(p1, p2, p3, p4)
queue = [[p1, p2, p3, p4]]
k = 0
while k < 4
n = queue.length
    i = 0 
    while i < n
        nu = queue[i]
        j = k + 1
        while j < 4
            queue.push(swap(nu,k,j))
            puts queue[-1].inspect
           
            j+=1
        end
    i+=1
    end
    k+=1
end
i = 0
while i < queue.length
return true if check(queue[i]) == true 
i+=1
end
    return false
end