# frozen_string_literal: true

# @param {Integer} n
# @param {Integer[][]} paths
# @return {Integer[]}
def garden_no_adj(n, paths)
  color = Array.new(n, 0)
  graph = Array.new(n + 1) { [] }

  paths.each do |x, y|
    graph[x] << y
    graph[y] << x
  end

  n.times do |i|
    (1..4).each do |c|
      ff = 0

      graph[i + 1].each do |t|
        if color[t - 1] == c
          ff = 1
          break
        end
      end

      if ff.zero?
        color[i] = c
        break
      end
    end
  end

  color
end

def _garden_no_adj(n, paths)
  gardens = ['PLUG'] + Array.new(n, 1)

  flowers = [1, 2, 3, 4]

  all_ok = false

  until all_ok
    all_ok = true

    paths.each do |a, b|
      if gardens[a] == gardens[b]
        gardens[b] = (flowers - [gardens[a]])[rand(3)]
        all_ok = false
      end
    end
  end

  gardens[1..-1]
end
