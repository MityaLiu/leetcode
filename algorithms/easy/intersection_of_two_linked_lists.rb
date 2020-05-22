# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def get_intersection_node(head_a, head_b)
  size_a = calc_size(head_a)
  size_b = calc_size(head_b)

  if size_b > size_a
    (size_b - size_a).times { head_b = head_b.next }
  elsif size_a > size_b
    (size_a - size_b).times { head_a = head_a.next }
  end

  while head_a != head_b
    head_a = head_a.next
    head_b = head_b.next
  end

  head_a
end

private def calc_size(list)
  it = list
  result = 0

  while it
    result += 1
    it = it.next
  end

  result
end
