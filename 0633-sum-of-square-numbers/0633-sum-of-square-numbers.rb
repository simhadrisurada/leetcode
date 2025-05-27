# @param {Integer} c
# @return {Boolean}
def check(n)
num = Math.sqrt(n).to_i
return num*num == n
end
def judge_square_sum(c)
return true if c == 0
i = 1 
num = Math.sqrt(c).to_i
while i*i <= num*num
if check(c - (i*i)) == true 
return true 
end
i+=1
end
    return false
end