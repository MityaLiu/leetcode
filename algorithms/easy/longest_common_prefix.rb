# frozen_string_literal: true

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.nil? || strs.empty?

  strs[0].chars.inject('') do |prefix, c|
    break prefix if strs.any? { |str| !str.start_with?(prefix + c) }

    prefix + c
  end
end
