# frozen_string_literal: true

# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_ocurrences(text, first, second)
  a = text.split
  result = []

  until a.empty?
    index = a.index(first)

    break unless index

    a = a[index + 1..-1]

    if a[0] == second && a.size > 1
      result << a[1]
    end
  end

  result
end
