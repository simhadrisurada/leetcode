# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
return 1 if ratings.length == 1
nu = [1]*ratings.length
nu2 = [1]*ratings.length
i = 1
while i < ratings.length - 1
nu[i] = [nu[i-1],nu[i+1]].max  + 1   if ratings[i] > ratings[i-1] && ratings[i] > ratings[i+1]
nu[i] = nu[i-1]  + 1   if ratings[i] > ratings[i-1] && ratings[i] <= ratings[i+1]
nu[i] = nu[i+1]  + 1   if ratings[i] <= ratings[i-1] && ratings[i] > ratings[i+1]
i+=1
end
nu[0] = nu[1]+1 if ratings[0] > ratings[1]
nu[-1] = nu[-2] +1 if ratings[-1] > ratings[-2]
ratings = ratings.reverse

nu2 = [1]*ratings.length
i = 1
while i < ratings.length - 1
nu2[i] = [nu2[i-1],nu2[i+1]].max  + 1   if ratings[i] > ratings[i-1] && ratings[i] > ratings[i+1]
nu2[i] = nu2[i-1]  + 1   if ratings[i] > ratings[i-1] && ratings[i] <= ratings[i+1]
nu2[i] = nu2[i+1]  + 1   if ratings[i] <= ratings[i-1] && ratings[i] > ratings[i+1]
i+=1
end
nu2[0] = nu2[1]+1 if ratings[0] > ratings[1]
nu2[-1] = nu2[-2] +1 if ratings[-1] > ratings[-2]
 i = 0
nu2= nu2.reverse
 while i < nu.length 
nu2[i] -= nu[i] 
nu2[i] = 0 if nu2[i] < 0 
i+=1
end


return nu.sum+nu2.sum
    
end