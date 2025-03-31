# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
######### for creating monotonically increasing stack #############################################################
stack = []
hash = [] # ===>>>> for debugging ! <<<============================================================================
i = 0
max = 0
while i < heights.length
    if stack.length == 0 || stack.last[0] <= heights[i] #===>>>conditions for stack construction or addition <<<===
        stack.push([heights[i],i]) 

    elsif stack.last[0] > heights[i] 
        n = stack.last[1] # ==>>>> for previous greter element's index <<<<========================================
        while stack.length != 0 && stack.last[0] > heights[i]#=====>>>> destruction <<<<<==========================
            hash.push(stack.last)
            n = stack.last[1] # ==>>>> for previous greter element's index <<<<===================================
            if max < (i - stack.last[1])*stack.last[0] ### >>>> finding max rectangle in destruction <<<< ########
                max = (i - stack.last[1])*stack.last[0] 
            end
        stack.pop
        end
        if stack.length == 0 || stack.last[0] < heights[i] #===>>>conditions for stack construction or addition <<<===
            stack.push([heights[i],n])
        end
    end
i+=1
end
####################################################################################################################
###########>>>>>>>>>>>>>>>>>   finding max rectangle in stack that is left <<<<<<<<<<<<<<<<<<<<#####################
i = 0 
while i < stack.length
    if max < (heights.length - stack[i][1])*stack[i][0]
    max =  (heights.length - stack[i][1])*stack[i][0]
    end
i+=1
end
####################################################################################################################

return max ######## taking max to the destination ##################################################################
    
end