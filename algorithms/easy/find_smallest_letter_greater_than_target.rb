# frozen_string_literal: true

# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  letters.find { |s| s > target } || letters[0]
end
