# frozen_string_literal: true

# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
  logs.sort { |a, b| compare(a, b) }
end

private def compare(a, b)
  w1 = a.split
  w2 = b.split

  alpha1 = w1[1].match?(/^[a-zA-Z]+$/)
  alpha2 = w2[1].match?(/^[a-zA-Z]+$/)

  r1 = w1[1..-1].join(' ').gsub(/\d/, '')
  r2 = w2[1..-1].join(' ').gsub(/\d/, '')

  if alpha1 && alpha2
    if r1 == r2
      w1[0] <=> w2[0]
    else
      r1 <=> r2
    end
  elsif alpha1
    -1
  elsif alpha2
    1
  else
    0
  end
end
