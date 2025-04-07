# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def traverse(tree1,tree2)
return true if tree1 == nil && tree2 == nil
return false if tree1 == nil||tree2 ==nil ||(tree1.val != tree2.val)
n1 = traverse(tree1.left,tree2.left)
n2 = traverse(tree1.right,tree2.right)
return (n1== n2 &&n1 == true)
end
def is_same_tree(p, q)
return traverse(q,p)
end