# frozen_string_literal: true

# @param {String} s
# @return {String}
def reverse_only_letters(s)
  result = s.scan(/[a-zA-Z]/).reverse.join

  s.each_char.with_index do |c, i|
    result.insert(i, c) unless /[a-zA-Z]/.match?(c)
  end

  result
end
