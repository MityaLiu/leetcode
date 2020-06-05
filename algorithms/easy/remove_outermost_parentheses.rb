# frozen_string_literal: true

# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  depth = 0
  previous_i = 0
  result = []

  s.each_char.with_index do |c, i|
    depth += (c == '(' ? 1 : -1)

    if depth.zero?
      result << s[previous_i + 1..i - 1]
      previous_i = i + 1
    end
  end

  result.join
end
