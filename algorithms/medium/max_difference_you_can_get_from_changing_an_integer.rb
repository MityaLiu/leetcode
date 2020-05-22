# frozen_string_literal: true

# @param {Integer} num
# @return {Integer}
def max_diff(num)
  num = num.to_s

  find_max(num).to_i - find_min(num).to_i
end

private def find_max(num)
  first = num.chars.find { |n| n < '9' }
  return num unless first

  num.gsub(first, '9')
end

private def find_min(num)
  first = num.chars.find { |n| n > '1' }
  return num unless first

  first_index = num.index(first)

  num.gsub(first, first_index.zero? ? '1' : '0')
end
