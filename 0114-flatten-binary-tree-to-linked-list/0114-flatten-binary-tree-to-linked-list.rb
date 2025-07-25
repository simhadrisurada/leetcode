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
# @return {Void} Do not return anything, modify root in-place instead.
def give(root)
retrun nil if root == nil
    n = root
    while n.right != nil
    n = n.right 
    end
    return n
end
def run(root)
    return nil if root  == nil
    left,right = root.left,root.right 
    root.left,root.right = nil,nil
    root.right = run(left)
    now = give(root)
    now.right = run(right)
    return root
end
def flatten(root)
run(root)
end