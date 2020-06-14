# frozen_string_literal: true

# @param {String} a
# @param {String} b
# @return {Boolean}
def rotate_string(a, b)
  return true if a == b
  return false if a.size != b.size

  a = a.chars
  b = b.chars

  (a.size - 1).times do
    a.rotate!
    return true if a == b
  end

  false
end
