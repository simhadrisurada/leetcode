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
# @return {Integer[][]}
$ans = []
def check(tree,target,cur,nu)
if tree.left == nil && tree.right == nil
$ans.push(nu+[tree.val]) if cur + tree.val == target
return 
end
check(tree.left,target,cur + tree.val,nu+[tree.val]) if tree.left != nil
check(tree.right,target,cur + tree.val,nu+[tree.val]) if tree.right != nil
end
def path_sum(root, target_sum)
return [] if  root == nil

check(root,target_sum,0,[])
nu = $ans
$ans = []
return nu
end