# frozen_string_literal: true

# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  d = dividers(area).sort_by(&:-@)
  mid = d.size / 2

  d[mid - 1..mid]
end

private def dividers(n)
  (1..Math.sqrt(n).ceil).each_with_object([]) do |divider, result|
    if (n % divider).zero?
      result << divider
      result << n / divider
    end
  end
end
