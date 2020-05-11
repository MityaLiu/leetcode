# frozen_string_literal: true

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  (1..n).each_with_object([]) do |i, result|
    result <<
      if i % 15 == 0
        'FizzBuzz'
      elsif i % 3 == 0
        'Fizz'
      elsif i % 5 == 0
        'Buzz'
      else
        i.to_s
      end
  end
end
