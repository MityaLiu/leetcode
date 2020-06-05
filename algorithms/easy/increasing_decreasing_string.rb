# frozen_string_literal: true

# @param {String} s
# @return {String}
def sort_string(s)
  a = s.chars.sort

  result = ''

  until a.empty?
    uniq = a.uniq
    uniq.each { |q| a.delete_at(a.index(q)) }
    result += uniq.join
    a.reverse!
  end

  result
end
