# frozen_string_literal: true

# @param {Integer[]} a
# @return {String}
def largest_time_from_digits(a)
  a.permutation.map { |b| '%d%d:%d%d' % b }.select { |t| valid?(t) }.max || ''
end

private def valid?(str)
  str.match?(/^([01]?[0-9]|2[0-3]):[0-5][0-9]$/)
end
