# frozen_string_literal: true

# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  s.chars.count { |c| j.include?(c) }
end
