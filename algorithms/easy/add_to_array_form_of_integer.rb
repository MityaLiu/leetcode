# frozen_string_literal: true

# @param {Integer[]} a
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(a, k)
  (a.join.to_i + k).to_s.chars.map(&:to_i)
end
