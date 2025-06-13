# @param {String} s
# @return {String[]}
$nu = []
def make(s,i,nu)
if i >= s.length
$nu.push(nu)
return 
end
if s[i].ord >= "A".ord && s[i].ord <= "Z".ord
make(s,i+1,nu+((s[i].ord)+32).chr)
make(s,i+1,nu+s[i])
return 
elsif s[i].ord >= "a".ord && s[i].ord <= "z".ord
make(s,i+1,nu+((s[i].ord)-32).chr)
make(s,i+1,nu+s[i])
return 
else
make(s,i+1,nu+s[i])
end
end
def letter_case_permutation(s)
    make(s,0,"")
    nu = $nu
    $nu = []
puts nu.inspect
    return nu
end