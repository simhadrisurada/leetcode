# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
i = 0
count = 0
while i < dominoes.length
    dominoes[i] = dominoes[i].sort
    i+=1
end
hash = Hash.new
i = 0
while i< dominoes.length
if hash[dominoes[i]] == nil
hash[dominoes[i]] = 1
else
hash[dominoes[i]] += 1
end
i+=1
end
hash.each_key do|key|
n = hash[key]
n -=1
count += (n*(n+1))/2
end


return count

end