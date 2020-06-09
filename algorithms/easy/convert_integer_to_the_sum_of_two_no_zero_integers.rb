# frozen_string_literal: true

# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  (1..n / 2).each do |a|
    next if a.to_s.include?('0')

    b = n - a

    return [a, b] unless b.to_s.include?('0')
  end
end
