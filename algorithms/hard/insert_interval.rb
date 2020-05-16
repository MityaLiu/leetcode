# frozen_string_literal: true

# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  return intervals if new_interval.empty?

  i = intervals.index { |interval| overlaps?(interval, new_interval) }

  if i
    intervals[i] = merge_intervals(intervals[i], new_interval)
  else
    intervals << new_interval
    intervals.sort! { |a, b| a[0] <=> b[0] }
  end

  join_covering_intervals(intervals)
end

private def join_covering_intervals(intervals)
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
