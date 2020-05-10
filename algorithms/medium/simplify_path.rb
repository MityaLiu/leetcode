# frozen_string_literal: true

# @param {String} path
# @return {String}
def simplify_path(path)
  d = path.split('/').reject { |w| w.nil? || w.empty? }

  r = d.each_with_object([]).with_index do |(q, result), _i|
    case q
    when '.'
    when '..'
      result.pop
    else
      result << q
    end
  end

  '/' + r.join('/')
end
