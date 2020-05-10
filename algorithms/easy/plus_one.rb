# frozen_string_literal: true

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  (digits.join.to_i + 1).to_s.scan(/\w/).map(&:to_i)
end
