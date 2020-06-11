# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  remove_backspaces(s) == remove_backspaces(t)
end

private def remove_backspaces(str)
  (str.size / 2).times { str.gsub!(/[a-zA-Z]\#/, '') }
  str.delete('#')
end
