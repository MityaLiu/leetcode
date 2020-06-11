# frozen_string_literal: true

# @param {Integer[]} rec1
# @param {Integer[]} rec2
# @return {Boolean}
def is_rectangle_overlap(rec1, rec2)
  overlaps?(rec1[0]..rec1[2], rec2[0]..rec2[2]) &&
    overlaps?(rec1[1]..rec1[3], rec2[1]..rec2[3])
end

private def overlaps?(r1, r2)
  (r1.first < r2.last) && (r2.first < r1.last)
end
