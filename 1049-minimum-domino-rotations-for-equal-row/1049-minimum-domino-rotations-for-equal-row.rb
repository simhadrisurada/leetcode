# @param {Integer[]} tops
# @param {Integer[]} bottoms
# @return {Integer}
def check(top,bot,k)
i = 0
count = 0
swaps = 0 
    while i < top.length
        if top[i] != k && bot[i] != k
            return -1
        elsif (top[i] != k && bot[i] == k)  
            count += 1
            swaps+=1
        end
        if (top[i] == k ) 
            count+=1
        end
    i+=1
    end
return swaps
end
def min_domino_rotations(tops, bottoms)
hash = Hash.new
i = 0
while i < tops.length
if hash[tops[i]] == nil
hash[tops[i]] = 1 
else
hash[tops[i]] += 1
end
if hash[bottoms[i]] == nil
hash[bottoms[i]] = 1 
else
hash[bottoms[i]] += 1
end
i+=1
end

nu = []
hash.each_key do|key|
nu.push(key) if hash[key] >= tops.length
end
return -1 if nu.length == 0
ans = -1
dummy = check(tops,bottoms,nu[0])
if dummy != -1 
ans = [check(bottoms,tops,nu[0]),dummy].min
end
if nu[1] != nil
    dummy = check(tops,bottoms,nu[1])
    if dummy != -1 
        ans = [check(bottoms,tops,nu[1]),dummy,ans].min
    end
end
ans
end