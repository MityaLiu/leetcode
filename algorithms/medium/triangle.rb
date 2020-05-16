# frozen_string_literal: true

# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  return 0 if triangle.empty?

  (1..triangle.size - 1).each do |row|
    prev = row - 1

    triangle[row].each_with_index do |_v, cell|
      tmp = []

      tmp.push triangle[prev][cell - 1] if cell >= 1
      tmp.push triangle[prev][cell] if cell < triangle[prev].size

      triangle[row][cell] += tmp.min
    end
  end

  triangle.last.min
end
