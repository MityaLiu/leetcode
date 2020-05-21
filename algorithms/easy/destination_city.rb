# frozen_string_literal: true

# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  (paths.map(&:last) - paths.map(&:first)).first
end
