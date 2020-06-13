# frozen_string_literal: true

# @param {Integer} num
# @return {String}
def convert_to_base7(num)
  # num.to_s(7)

  return '0' if num.zero?

  negative = num.negative?

  num *= -1 if negative

  ans = ''

  until num.zero?
    ans.prepend((num % 7).to_s)
    num /= 7
  end

  ans.prepend('-') if negative

  ans
end
