# frozen_string_literal: true

# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
  a.each(&:reverse!)

  a.each_with_index do |row, i|
    row.each_with_index do |v, j|
      a[i][j] = v.zero? ? 1 : 0
    end
  end

  a
end
