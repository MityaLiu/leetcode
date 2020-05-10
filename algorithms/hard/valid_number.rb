# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_number(s)
  # TODO: need to find my original regexp because this doesn't work
  !(s =~ /\A[-+]?\d*\.?\d+\z/).nil?
end
