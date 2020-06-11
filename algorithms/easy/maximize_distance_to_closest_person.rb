# frozen_string_literal: true

# @param {Integer[]} seats
# @return {Integer}
def max_dist_to_closest(seats)
  seats.map.with_index do |seat, i|
    next 0 unless seat.zero?

    left = seats[0..i].reverse.index(1)
    right = seats[i..-1].index(1)

    left && right ? [left, right].min : left || right
  end.max
end
