# frozen_string_literal: true

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  old_color = image[sr][sc]

  return image if old_color == new_color

  height = image.size
  width = image[0].size

  queue = [[sr, sc]]

  until queue.empty?
    queue.size.times do
      pixel = queue.shift

      image[pixel[0]][pixel[1]] = new_color

      [[pixel[0], pixel[1] - 1], [pixel[0], pixel[1] + 1], [pixel[0] - 1, pixel[1]], [pixel[0] + 1, pixel[1]]].each do |new_pixel|
        next unless (0...height).cover?(new_pixel[0]) && (0...width).cover?(new_pixel[1])

        queue << new_pixel if check_color(image, new_pixel, old_color)
      end
    end

    queue.uniq!
  end

  image
end

private def check_color(image, pixel, color)
  image[pixel[0]][pixel[1]] == color
end
