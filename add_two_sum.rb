# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    result=ListNode.new(0)
    quote=result
    plus=0
    loop do
        value=(l1.val+l2.val+plus)
        plus=value/10
        result.val=value%10
        result.next=(l1.next!=nil or l2.next!=nil or break and ListNode.new(0))
        result=result.next
        l1.next!=nil ? l1=l1.next : l1.val=0
        l2.next!=nil ? l2=l2.next : l2.val=0
    end
    result.next=ListNode.new(plus) if plus!=0
    quote
end