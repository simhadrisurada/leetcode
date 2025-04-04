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
# @return {TreeNode}
############### max depth #############################
def max_len(tree,len)
    if tree == nil 
        return len
    end
n1,n2 = 0,0
n1 = max_len(tree.left,len+1) 
n2 = max_len(tree.right,len+1) 
return [n1,n2].max
end
######################################################
########## for finding max depth traverse ###############
def dfs(tree,len,target,hash)
    if tree == nil 
        return len
    end
n1 = dfs(tree.left,len+1,target,hash)
n2 = dfs(tree.right,len+1,target,hash)
hash.push(tree) if n1 == target && n1==n2 ## for saving last nax depth node #
return [n1,n2].max
end
##########################################################
def lca_deepest_leaves(root)
hash =  []
m = max_len(root,0)
dfs(root,0,m,hash)
return hash[-1] # last is the answer
    
end