# frozen_string_literal: true

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows < 1

  (num_rows - 1).times.each_with_object([[1]]) do |_i, result|
    result << generate_row(result.last)
  end
end

private def generate_row(previous)
  size = previous.size + 1

  size.times.each_with_object(Array.new(size, 0)) do |i, result|
    result[i] = i.zero? || i == size - 1 ? 1 : previous[i - 1] + previous[i]
  end
end
