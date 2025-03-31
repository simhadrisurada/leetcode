# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
return "0" if num.length == 1 
o = 0 
num = num.split('')
i = 0 
while i < num.length
num[i] = num[i].to_i
i+=1
end
stack = []
i = 0
while i < num.length
if stack.length == 0
stack.push(num[i])
elsif stack.last >= num[i]
while stack.length != 0 && stack.last > num[i] && o < k
o+=1
stack.pop
end
stack.push(num[i])
else
stack.push(num[i])
end 
i+=1
end
while o < k
stack.pop
o+=1
end

i = 0
ans = 0
while i < stack.length
ans = (ans*10) + stack[i]
i+=1
end

return ans.to_s

end