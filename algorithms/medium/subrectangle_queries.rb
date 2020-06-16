# frozen_string_literal: true

class SubrectangleQueries
  attr_reader :rectangle

  # :type rectangle: Integer[][]
  def initialize(rectangle)
    @rectangle = rectangle
  end

  # :type row1: Integer
  # :type col1: Integer
  # :type row2: Integer
  # :type col2: Integer
  # :type new_value: Integer
  # :rtype: Void
  def update_subrectangle(row1, col1, row2, col2, new_value)
    (row1..row2).each do |j|
      (col1..col2).each do |i|
        rectangle[j][i] = new_value
      end
    end
  end

  # :type row: Integer
  # :type col: Integer
  # :rtype: Integer
  def get_value(row, col)
    rectangle[row][col]
  end
end

# Your SubrectangleQueries object will be instantiated and called as such:
# obj = SubrectangleQueries.new(rectangle)
# obj.update_subrectangle(row1, col1, row2, col2, new_value)
# param_2 = obj.get_value(row, col)
