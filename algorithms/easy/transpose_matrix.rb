# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
# @param {Integer[][]} a
# @return {Integer[][]}
def transpose(a)
  a.each_with_object([]).with_index do |(row, result), i|
    row.each_with_index do |v, j|
      result[j] ||= []
      result[j][i] = v
    end
  end
end
