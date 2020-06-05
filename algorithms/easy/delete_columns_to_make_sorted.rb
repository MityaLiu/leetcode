# frozen_string_literal: true

# @param {String[]} a
# @return {Integer}
def min_deletion_size(a)
  a[0].size.times.sum do |i|
    col = a.map { |w| w[i] }
    col != col.sort ? 1 : 0
  end
end
