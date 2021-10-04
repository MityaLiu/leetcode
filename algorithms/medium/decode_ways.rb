# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def num_decodings(s)
  return 0 if s.include?('00') || s.start_with?('0')

  size = s.size

  count = Array.new(size + 1, 0)
  count[0] = 1
  count[1] = 1

  (2..size).each do |i|
    first = s[i - 2].to_i
    second = s[i - 1].to_i

    count[i] = count[i - 1] if second > 0
    count[i] += count[i - 2] if first == 1 || (first == 2 && second < 7)
  end

  count[size]
end
