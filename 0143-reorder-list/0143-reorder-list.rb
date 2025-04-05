# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def rint(stack)
return if stack == nil
print stack.val
print " "
return rint(stack.next)
end
def attach(root,tag)
if root.next == nil
root.next = tag
return 
end
return attach(root.next,tag)
end
def reorder_list(head)
n = head
stack = []

while head != nil
stack.push(head)
head = head.next
end

i = 0
while i < stack.length
stack[i].next = nil
i+=1
end

left,right = 0,stack.length - 1
while left < right
stack[left].next = stack[right]
left+=1
right-=1
end

if stack.length % 2 == 0
i = 0
while i < stack.length/2 - 1
attach(stack[i],stack[i+1])
i+=1
end
else
i = 0
while i < stack.length/2
attach(stack[i],stack[i+1])
i+=1
end
end




end