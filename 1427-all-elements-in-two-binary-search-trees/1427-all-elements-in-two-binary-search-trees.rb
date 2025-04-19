# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def give_depth_node(root,nu)
nu.push(root.val)
return root if root.left == nil && root.right == nil 
give_depth_node(root.left,nu) if root.left != nil
give_depth_node(root.right,nu) if root.right != nil
return nu
end
def get_all_elements(root1, root2)

nu = []
give_depth_node(root1,nu) if root1 != nil
give_depth_node(root2,nu) if root2 != nil
return nu.sort 
end