# frozen_string_literal: true

# @param {Integer[]} a
# @return {Integer}
def peak_index_in_mountain_array(a)
  a.index(a.max)
end
