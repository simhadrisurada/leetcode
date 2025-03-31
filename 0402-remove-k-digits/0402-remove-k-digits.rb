# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
########  converting the given input to my comfort ######################
num = num.split('')
i = 0 
while i < num.length
    num[i] = num[i].to_i
i+=1
end
##########################################################################
o = 0 #==> flag for deleting ######

################  stack for optimal deletion #############################
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
##########################################################################

###################### if still there are digits to delete #############
while o < k
    stack.pop
o+=1
end
########################################################################

################## converting number array to string ####################
i = 0
ans = 0
while i < stack.length
    ans = (ans*10) + stack[i]
i+=1
end

return ans.to_s
#########################################################################
end