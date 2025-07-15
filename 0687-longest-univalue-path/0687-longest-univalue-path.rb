# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
$maxi = 0
def run(head)
    if head == nil
    return  [2000,1]
    end
    n1 = run(head.left)
    n2 = run(head.right)
   
    $maxi = [n1[1],n2[1]].max if $maxi < [n1[1],n2[1]].max
    if n1[0] == head.val && n2[0] == head.val
        $maxi = n1[1] + n2[1] + 1 if $maxi < n1[1] + n2[1] + 1
        return [head.val,[n1[1],n2[1]].max + 1]
    elsif n1[0] == head.val
        return [head.val,n1[1] + 1]
    elsif n2[0] == head.val
        return [head.val,n2[1] + 1]
    else
        return [head.val,1]
    end
end

def longest_univalue_path(root)
n1 = run(root)
maxi = $maxi 
$maxi = 0
return ([n1[1],maxi].max) - 1
    
end