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
$maxi = 0
$maxe = 0
def run(head)
if head == nil
 return 0
end
n1 = run(head.left)
n1 = 0 if n1 < 0
n2 = run(head.right)
n2 = 0 if n2 < 0
$maxi = [(head.val) + n1 + n2,$maxi].max
$maxe = [head.val,$maxe].max
return (head.val) + [n1,n2].max
end
def max_path_sum(root)
$maxe = root.val
$maxi = [run(root),$maxi].max
maxi = $maxi
$maxi = 0
maxe = $maxe
$maxe = 0
return  maxi if maxe >= 0
return maxe
    
end