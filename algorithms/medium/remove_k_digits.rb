# frozen_string_literal: true

# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
  # "5337"
  return '0' if k >= num.length
  return num if k.zero?

  (0..k - 1).each do |_j|
    i = 0
    i += 1 while i < num.length - 1 && num[i] <= num[i + 1]

    num.slice!(i)
  end

  num.to_i.to_s
end
