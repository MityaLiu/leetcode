# frozen_string_literal: true

# # Definition for Employee.
# class Employee
#     attr_accessor :id, :importance, :subordinates
#     def initialize( id, importance, subordinates)
#         @id = id
#         @importance = importance
#         @subordinates = subordinates
#     end
# end

# @param {Employee} employees
# @param {Integer} id
# @return {Integer}
def get_importance(employees, id)
  bfs(employees, id)
end

private def dfs(employees, id)
  employee = employees.find { |e| e.id == id }

  return 0 if employee.nil?

  employee.importance + employee.subordinates.map { |e| dfs(employees, e) }.sum
end

private def bfs(employees, id)
  total = 0
  queue = [id]

  until queue.empty?
    queue.size.times do
      eid = queue.shift
      employee = employees.find { |e| e.id == eid }

      next unless employee

      total += employee.importance

      unless employee.subordinates.empty?
        queue += employee.subordinates
      end
    end
  end

  total
end
