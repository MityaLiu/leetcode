# frozen_string_literal: true

# @param {String[]} a
# @return {String[]}
def common_chars(a)
  first = a.shift.chars

  return first if a.size == 1

  first.each_with_object([]) do |c, result|
    if a.all? { |w| w.include?(c) }
      result << c
      a.each { |w| w.slice!(w.index(c)) }
    end
  end
end
