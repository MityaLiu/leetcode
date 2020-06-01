# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  number_of_strings = 0
  l = r = 0

  s.each_char do |c|
    l += 1 if c == 'L'
    r += 1 if c == 'R'

    if l == r
      number_of_strings += 1
      l = r = 0
    end
  end

  number_of_strings
end
