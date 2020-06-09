# frozen_string_literal: true

# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
  shared = list1 & list2

  h = Hash.new { |s, k| s[k] = [] }

  shared.each { |w| h[list1.index(w) + list2.index(w)] << w }

  h.min[1]
end
