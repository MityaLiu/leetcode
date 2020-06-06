# frozen_string_literal: true

# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  v1 = 0
  v2 = s.size

  s.chars.each_with_object([]) do |c, result|
    case c
    when 'I'
      result << v1
      v1 += 1
    when 'D'
      result << v2
      v2 -= 1
    end
  end << v1
end
