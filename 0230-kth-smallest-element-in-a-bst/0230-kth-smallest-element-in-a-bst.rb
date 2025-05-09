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
# @param {Integer} k
# @return {Integer}
$nu = []
def check(root)
return if root == nil
check(root.left)
$nu.push(root.val)
check(root.right)
end

def kth_smallest(root, k)
 check(root)
nuu = $nu
$nu = []
return nuu[k-1]
end