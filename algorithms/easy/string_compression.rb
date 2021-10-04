# frozen_string_literal: true

# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  result = []
  i = 0

  while i < chars.size
    index = chars[i..-1].index { |c| c != chars[i] } || (chars.size - i)

    result << chars[i]
    result += index.to_s.chars if index > 1

    i += index
  end

  chars.replace(result)

  chars.size
end
