# @param {Integer[]} fruits
# @return {Integer}
def total_fruit(fruit)
    nu = []
    nu1 = []
    i = 1
    cnt = 1
    while i < fruit.length
    if fruit[i] == fruit[i-1]
        cnt+=1
    else
        nu.push(cnt)
        nu1.push(fruit[i-1])
        cnt = 1
    end
    i+=1
    end
    nu1.push(fruit[i-1])
     nu.push(cnt)
     return nu.sum if nu.length <= 2
      i = 0
      ans = 0
      maxi = 0
      hash = Hash.new
      while i < nu.length 
        if hash[nu1[i]] == nil && hash.length == 2
        hash = Hash.new
           maxi = ans if ans > maxi 
           hash[nu1[i]] = 0
           hash[nu1[i-1]] = 0
           ans = nu[i] + nu[i-1]
        else
            hash[nu1[i]] = 0
            ans+=nu[i]
        end
        puts ans 
        i+=1
      end
     maxi = ans if ans > maxi
         
    return maxi
end
