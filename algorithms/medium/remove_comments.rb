# frozen_string_literal: true

# @param {String[]} source
# @return {String[]}
def remove_comments(source)
  res = []
  out = ''
  blocked = false
  skip_char = false

  source.each do |line|
    (0..line.size - 1).each do |i|
      if skip_char
        skip_char = false
        next
      end

      if !blocked
        if i == line.size - 1
          out += line[i]
        else
          t = line[i..i + 1]

          if t == '/*'
            blocked = true
            skip_char = true
          elsif t == '//'
            break
          else
            out += line[i]
          end
        end
      else
        if i < line.size - 1
          t = line[i..i + 1]
          if t == '*/'
            blocked = false
            skip_char = true
          end
        end
      end
    end

    if !out.empty? && !blocked
      res << out
      out = ''
    end
  end

  res
end
