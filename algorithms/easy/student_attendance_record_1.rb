# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def check_record(s)
  s.count('A') < 2 && !s.include?('LLL') || s.match?(/^P+$/)
end
