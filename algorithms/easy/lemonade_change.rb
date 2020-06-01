# frozen_string_literal: true

# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  banknotes = { 5 => 0, 10 => 0 }

  until bills.empty?
    bill = bills.shift

    change_needed = bill - 5

    case change_needed
    when 5
      banknotes[5] -= 1
    when 15
      if banknotes[10] > 0
        banknotes[5] -= 1
        banknotes[10] -= 1
      else
        banknotes[5] -= 3
      end
    end

    return false if banknotes.values.any?(&:negative?)

    banknotes[bill] += 1 unless bill == 20
  end

  true
end
