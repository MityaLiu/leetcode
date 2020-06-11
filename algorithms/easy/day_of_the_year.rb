# frozen_string_literal: true

CALENDAR = {
  1  => 31,
  2  => 28, # +1 in leap years
  3  => 31,
  4  => 30,
  5  => 31,
  6  => 30,
  7  => 31,
  8  => 31,
  9  => 30,
  10 => 31,
  11 => 30,
  12 => 31
}.freeze

# @param {String} date
# @return {Integer}
def day_of_year(date)
  y, m, d = date.split('-').map(&:to_i)

  md = CALENDAR.sum { |k, v| k < m ? v : 0 }

  leap_day = leap_year?(y) && m > 2 ? 1 : 0

  d + md + leap_day
end

private def leap_year?(year)
  (year % 4).zero? && (!(year % 100).zero? || (year % 400).zero?)
end
