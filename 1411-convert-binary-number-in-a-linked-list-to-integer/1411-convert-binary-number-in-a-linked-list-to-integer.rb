# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
$ans = 0
def make(head)
    if head == nil
        return 0
    end
    n = make(head.next)
    $ans += (head.val)*(2**n)
    return  n + 1
end
def get_decimal_value(head)
n = make(head)
    
    ans = $ans
    $ans = 0
    return ans
    
end