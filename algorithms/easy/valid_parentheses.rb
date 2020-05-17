# frozen_string_literal: true

OPPOSITE = {
  ')' => '(',
  '}' => '{',
  ']' => '['
}.freeze

# @param {String} s
# @return {Boolean}
def is_valid(s)
  s.chars.each_with_object([]) do |c, stack|
    case c
    when '(', '{', '['
      stack.push(c)
    else
      return false if stack.pop != OPPOSITE[c]
    end
  end.empty?
end
