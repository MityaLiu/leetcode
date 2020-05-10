# frozen_string_literal: true

# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  nums.sort { |a, b| comp(a.to_s, b.to_s) }.join.to_i.to_s
end

private def comp(a, b)
  min_l = [a.size, b.size].min

  (0..min_l - 1).each do |i|
    return -1 if a[i].nil? && !b[i].nil? && b[i] < a[0]
    return 1 if b[i].nil? && !a[i].nil? && a[i] < b[0]
    return -1 if a[i].to_i > b[i].to_i
    return 1 if a[i].to_i < b[i].to_i
  end

  if a.size > b.size
    comp(a[min_l..-1], b)
  elsif a.size < b.size
    comp(a, b[min_l..-1])
  else
    b.to_i <=> a.to_i
  end
end
