# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?

  head = l1.val <= l2.val ? l1 : l2
  a = head
  prev = nil

  until l1.nil? || l2.nil?
    if l1.val <= l2.val
      a = l1
      l1 = l1.next
    else
      a = l2
      l2 = l2.next
    end
    prev.next = a if prev
    prev = a
  end

  a.next = l1 unless l1.nil?
  a.next = l2 unless l2.nil?

  head
end
