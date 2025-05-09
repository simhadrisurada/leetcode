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
$num = 0
def check(root,k)
$num += (k*10) + root.val  if root.left == nil && root.right == nil
check(root.left,(k*10)+root.val) if root.left != nil
check(root.right,(k*10)+root.val) if root.right != nil
end
def sum_numbers(root)
check(root,0)
n = $num
$num = 0
return n
    
end