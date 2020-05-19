# frozen_string_literal: true

# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
  start_time.each_with_index.inject(0) do |result, (t, i)|
    (t..end_time[i]).cover?(query_time) ? result + 1 : result
  end
end
