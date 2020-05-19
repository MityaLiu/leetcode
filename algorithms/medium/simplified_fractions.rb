# frozen_string_literal: true

# @param {Integer} n
# @return {String[]}
def simplified_fractions(n)
  (1..n - 1).each_with_object([]) do |i, result|
    (2..n).each do |j|
      next if j <= i || i.gcd(j) > 1

      result << "#{i}/#{j}"
    end
  end
end
