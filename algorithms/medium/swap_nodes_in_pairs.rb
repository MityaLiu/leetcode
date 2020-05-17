# frozen_string_literal: true

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
def swap_pairs(head)
  return head if head&.next.nil?

  prev = nil
  a = head
  head = head.next
  i = 0

  until a.nil?
    if i.even?
      n = a.next
      if n
        prev.next = n if prev
        a.next = n.next
        n.next = a
      end
    else
      prev = a
      a = a.next
    end
    i += 1
  end

  head
end
