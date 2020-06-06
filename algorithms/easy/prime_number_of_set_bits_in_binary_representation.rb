# frozen_string_literal: true

require 'prime'

# @param {Integer} l
# @param {Integer} r
# @return {Integer}
def count_prime_set_bits(l, r)
  (l..r).count do |v|
    Prime.prime?(v.to_s(2).count('1'))
  end
end
