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
$s = 0
def check(root,max)
n = max
return if root == nil
if root.val >= max
n = root.val 
$s += 1
end
check(root.left,n) 
check(root.right,n) 
end
def good_nodes(root)
check(root,-1000000)
n = $s
$s = 0
return n

    
end