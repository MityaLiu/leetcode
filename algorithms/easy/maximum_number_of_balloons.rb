# frozen_string_literal: true

# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  h = Hash.new(0)

  text.each_char { |c| h[c.to_sym] += 1 }

  [h[:b], h[:a], h[:l] / 2, h[:o] / 2, h[:n]].min
end
