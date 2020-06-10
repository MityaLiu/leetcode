# frozen_string_literal: true

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  return [1] if row_index.zero?

  generate_row(get_row(row_index - 1))
end

private def generate_row(previous)
  size = previous.size + 1

  size.times.each_with_object(Array.new(size, 0)) do |i, result|
    result[i] = i.zero? || i == size - 1 ? 1 : previous[i - 1] + previous[i]
  end
end
