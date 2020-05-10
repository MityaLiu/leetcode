# frozen_string_literal: true

# @param [String] s
# @return [Integer]
def longest_valid_parentheses(s)
  maxans = 0
  stack = [-1]

  s.each_char.with_index do |c, i|
    if c == '('
      stack.push(i)
    else
      stack.pop
      if stack.empty?
        stack.push(i)
      else
        maxans = [maxans, i - stack.last].max
      end
    end
  end

  maxans
end
