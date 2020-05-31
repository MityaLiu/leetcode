# frozen_string_literal: true

# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  number_of_steps = 0

  until num.zero?
    if num.even?
      num /= 2
    else
      num -= 1
    end

    number_of_steps += 1
  end

  number_of_steps
end
