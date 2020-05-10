# frozen_string_literal: true

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
def delete_duplicates(head)
  h = head
  until h&.next.nil?
    if h.val == h.next.val
      h.next = h.next.next
    else
      h = h.next
    end
  end
  head
end
