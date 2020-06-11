# frozen_string_literal: true

DIRECTIONS = %w[left up right down].freeze

# @param {Integer[]} commands
# @param {Integer[][]} obstacles
# @return {Integer}
def robot_sim(commands, obstacles)
  robot = [0, 0]
  direction = 'up'

  obstacles_h = {}

  obstacles.each do |obstacle|
    obstacles_h["#{obstacle[0]} #{obstacle[1]}"] = true
  end

  commands.map do |command|
    case command
    when -2
      direction = DIRECTIONS[(DIRECTIONS.index(direction) - 1)]
    when -1
      direction = DIRECTIONS[(DIRECTIONS.index(direction) + 1) % 4]
    else
      command.times do
        case direction
        when 'left'
          break if obstacles_h["#{robot[0] - 1} #{robot[1]}"]

          robot[0] -= 1
        when 'up'
          break if obstacles_h["#{robot[0]} #{robot[1] + 1}"]

          robot[1] += 1
        when 'right'
          break if obstacles_h["#{robot[0] + 1} #{robot[1]}"]

          robot[0] += 1
        when 'down'
          break if obstacles_h["#{robot[0]} #{robot[1] - 1}"]

          robot[1] -= 1
        end
      end
    end

    robot.sum { |v| v**2 }
  end.max
end
