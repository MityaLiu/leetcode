# frozen_string_literal: true

# @param {Integer[]} card_points
# @param {Integer} k
# @return {Integer}
def max_score(card_points, k)
  size = card_points.size
  return card_points.sum if k >= size

  subarray = card_points[size - k..-1] + card_points[0..k - 1]
  previous_sum = subarray[0...k - 1].sum
  max = 0

  (0..subarray.size - k).inject(previous_sum) do |sum, i|
    sum += subarray[i + k - 1] - (i >= 1 ? subarray[i - 1] : 0)
    max = sum if max < sum
    sum
  end

  max
end
