# @param {String} digits
# @return {String[]}
$nu = []
def check(num,i,hash,nu)
if i >= num.length
$nu.push(nu) 
return 
end
j = 0 
while j < hash[num[i]].length
check(num,i+1,hash,nu+hash[num[i]][j])
j+=1
end

end
def letter_combinations(digits)
return [] if digits == ""
hash = Hash.new
hash["2"] = "abc"
hash["3"] = "def"
hash["4"] = "ghi"
hash["5"] = "jkl"
hash["6"] = "mno"
hash["7"] = "pqrs"
hash["8"] = "tuv"
hash["9"] = "wxyz"
check(digits,0,hash,"")
nu = $nu
$nu = []
return nu
end