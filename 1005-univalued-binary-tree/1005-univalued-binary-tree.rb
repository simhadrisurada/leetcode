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
def check(root,n)
return true if root == nil 
return false if n != root.val
n1 = check(root.left,n)
n2 = check(root.right,n)
return (n1 == n2) && (n1 == true)
end

def is_unival_tree(root)
return true if root == nil 
    return check(root,root.val)
end