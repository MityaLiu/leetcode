# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def max_power(s)
  accum = ''

  s.chars.inject(0) do |result, c|
    accum.end_with?(c) ? accum += c : accum = c
    [result, accum.length].max
  end
end
