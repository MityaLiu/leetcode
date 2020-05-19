# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def is_possible(nums)
  count = Hash.new(0)
  tails = Hash.new(0)

  nums.each { |n| count[n] += 1 }

  nums.each do |item|
    next if count[item].zero?

    count[item] -= 1

    if tails[item - 1] > 0
      tails[item - 1] -= 1
      tails[item] += 1
    elsif count[item + 1] > 0 && count[item + 2] > 0
      count[item + 1] -= 1
      count[item + 2] -= 1
      tails[item + 2] += 1
    else
      return false
    end
  end

  true
end
