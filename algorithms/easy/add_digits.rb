# frozen_string_literal: true

# @param {Integer} num
# @return {Integer}
def add_digits(num)
  s = num.to_s

  until s.length == 1
    s = s.chars.sum(&:to_i).to_s
  end

  s.to_i
end
