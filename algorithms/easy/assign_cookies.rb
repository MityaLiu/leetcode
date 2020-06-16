# frozen_string_literal: true

# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!

  g.count do |gf|
    index = s.index { |size| gf <= size }

    s.delete_at(index) if index

    index
  end
end
