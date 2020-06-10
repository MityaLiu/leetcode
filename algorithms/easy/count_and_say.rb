# frozen_string_literal: true

# @param {Integer} n
# @return {String}
def count_and_say(n)
  return '1' if n == 1

  recursive = count_and_say(n - 1)

  count = 0
  result = ''
  last = recursive[0]

  recursive.each_char do |char|
    if last == char
      count += 1
    else
      result += count.to_s + last.to_s

      last = char
      count = 1
    end
  end

  result += count.to_s + last.to_s

  result
end
