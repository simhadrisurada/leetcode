# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
hash = Hash.new
while head != nil
if hash[head] == nil
hash[head] = 0
else
return head
end
head = head.next
end
return nil
end