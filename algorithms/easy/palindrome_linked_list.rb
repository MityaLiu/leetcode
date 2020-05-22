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
# @return {Boolean}
def is_palindrome(head)
  a = []

  while head
    a << head.val
    head = head.next
  end

  mid = a.size / 2

  a[0...mid] == a[a.size - mid..-1].reverse
end
