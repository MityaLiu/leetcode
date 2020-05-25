# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  lists.compact!

  head = nil
  new = nil

  frequencies = calc_frequencies(lists)

  until lists.empty?
    index = find_min_list_index(lists, frequencies)

    next_node = lists[index]

    if new.nil?
      head = next_node
    else
      new.next = next_node
    end

    new = next_node

    if lists[index].next
      lists[index] = lists[index].next
    else
      lists.delete_at(index)
    end
  end

  head
end

private def calc_frequencies(lists)
  lists.each_with_object(Hash.new(0)).each do |list, result|
    a = list
    while a
      result[a.val] += 1
      a = a.next
    end
  end.sort
end

private def find_min_list_index(lists, frequencies)
  min = frequencies[0][0]
  frequencies[0][1] -= 1
  if frequencies[0][1].zero?
    frequencies.delete_at(0)
  end

  lists.index { |list| list.val == min }
end
