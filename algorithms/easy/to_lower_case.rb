# frozen_string_literal: true

# @param {String} str
# @return {String}
def to_lower_case(str)
  str.chars.map { |c| (65..90).cover?(c.ord) ? (c.ord + 32).chr : c }.join
end
