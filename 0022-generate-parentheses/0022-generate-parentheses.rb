# @param {Integer} n
# @return {String[]}
$ans = []
def check(target,s,pre,op,cl)
if pre == target
$ans.push(s) 
return 
end
check(target,s+"(",pre+1,op+1,cl) if op < target/2
check(target,s+")",pre+1,op,cl+1) if op-cl != 0
end
def generate_parenthesis(n)
   check(n*2,"",0,0,0)
   nu = $ans
   $ans =[]
return nu
end