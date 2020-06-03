# frozen_string_literal: true

# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
def day_of_the_week(day, month, year)
  Time.new(year, month, day).strftime('%A')
end
