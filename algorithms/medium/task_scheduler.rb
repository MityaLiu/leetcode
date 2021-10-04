# frozen_string_literal: true

# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  cnt = tasks.each_with_object(Array.new(26, 0)) { |task, result| result[task.ord - 'A'.ord] += 1 }.sort

  i = 25
  mx = cnt.last
  i -= 1 while i >= 0 && cnt[i] == mx

  [tasks.size, ((mx - 1) * (n + 1)) + 25 - i].max
end
