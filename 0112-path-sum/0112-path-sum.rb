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
# @param {Integer} target_sum
# @return {Boolean}
def check(tree,target,c)
return false if tree == nil
return true if c+tree.val == target && tree.left == nil && tree.right == nil
return false if check(tree.left,target,c+tree.val) == false && check(tree.right,target,c+tree.val) == false
return true
end
def has_path_sum(root, target_sum)
return false if root == nil 
return check(root,target_sum,0)
 
end