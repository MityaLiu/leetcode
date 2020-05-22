# frozen_string_literal: true

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_if_can_break(s1, s2)
  return false if s1.size != s2.size

  s1 = s1.chars.sort
  s2 = s2.chars.sort

  can_break?(s1, s2) || can_break?(s2, s1)
end

private def can_break?(s1, s2)
  s1.each_with_index.all? { |c, i| c <= s2[i] }
end
