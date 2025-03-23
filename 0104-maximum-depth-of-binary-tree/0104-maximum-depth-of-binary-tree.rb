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
def root1(nu,c)
return c if nu == nil
return [root1(nu.left,c+1),root1(nu.right,c+1)].max
end
def max_depth(root)
return 0 if root == nil

  return  root1(root,0)
end