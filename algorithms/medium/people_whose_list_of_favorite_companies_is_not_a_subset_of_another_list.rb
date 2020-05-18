# frozen_string_literal: true

# @param {String[][]} favorite_companies
# @return {Integer[]}
def people_indexes(favorite_companies)
  favorite_companies.each_with_object([]).with_index do |(co, result), i|
    result << i unless favorite_companies.each_with_index.any? { |fc, j| i != j && (co - fc).empty? }
  end
end
