# frozen_string_literal: true

# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort_by! { |a| a[0] }

  intervals.each_with_object([]) do |interval, result|
    changed = false

    result.each_with_index do |r, i|
      if overlaps?(r, interval)
        changed = true
        result[i] = merge_intervals(r, interval)
      end
    end

    result << interval unless changed
  end
end

private def overlaps?(interval1, interval2)
  cover?(interval1, interval2.first) || cover?(interval2, interval1.first)
end

private def cover?(interval, val)
  interval.first <= val && interval.last >= val
end

private def merge_intervals(interval1, interval2)
  (interval1 + interval2).minmax
end
