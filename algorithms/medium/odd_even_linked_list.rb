# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return head unless head&.next

  odd = head
  even = head.next
  even_head = even

  while even && even.next
    odd.next = even.next
    odd = odd.next

    even.next = odd.next
    even = even.next
  end

  odd.next = even_head

  head
end
