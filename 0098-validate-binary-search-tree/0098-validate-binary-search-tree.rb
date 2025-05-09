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
# @return {Boolean}
$nu = []
def check(root)
return if root == nil
check(root.left)
$nu.push(root.val)
check(root.right)
end
def is_valid_bst(root)
check(root)
nuu = $nu
$nu = []
i = 1
while i < nuu.length
return false if nuu[i] <= nuu[i-1]
i+=1
end
 return true
end