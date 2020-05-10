# frozen_string_literal: true

# @param {Integer} n
# @param {Integer[][]} reserved_seats
# @return {Integer}
def max_number_of_families(n, reserved_seats)
  rows = {}

  reserved_seats.each do |r, s|
    rows[r - 1] ||= 0
    if s > 1 && s < 10
      rows[r - 1] += 2**(s - 2)
    end
  end

  empty_rows = (n - rows.count) * 2

  empty_rows + rows.sum { |_r, v| calc_availablility(v) }
end

private def calc_availablility(row)
  left_available    = row | 15 == row + 15
  central_available = row | 60 == row + 60
  right_available   = row | 240 == row + 240

  if left_available && right_available
    2
  elsif left_available || central_available || right_available
    1
  else
    0
  end
end
