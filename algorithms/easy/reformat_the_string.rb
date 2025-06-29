# frozen_string_literal: true

# @param {String} s
# @return {String}
def reformat(s)
  chars_and_nums = [s.scan(/\d/), s.scan(/\D/)].sort_by { |arr| -arr.size }

  return '' if chars_and_nums.map(&:size).reduce(:-) > 1

  chars_and_nums[0].zip(chars_and_nums[1]).join
end
