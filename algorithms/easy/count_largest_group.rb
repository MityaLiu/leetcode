# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  h = Hash.new(0)

  n.times do |e|
    sum = (e + 1).to_s.chars.sum(&:to_i)
    h[sum] += 1
  end

  a = h.values
  a.count(a.max)
end
