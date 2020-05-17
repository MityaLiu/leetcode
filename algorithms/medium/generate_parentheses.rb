# frozen_string_literal: true

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  @result = []
  generate_parenthesis_(n, 0, 0, '')
  @result
end

private def generate_parenthesis_(pairs, lparen, rparen, tracing)
  if lparen + rparen == 2 * pairs
    @result << tracing
    return
  end

  if lparen < pairs
    generate_parenthesis_(pairs, lparen + 1, rparen, tracing + '(')
  end

  if rparen < pairs && rparen < lparen
    generate_parenthesis_(pairs, lparen, rparen + 1, tracing + ')')
  end
end
