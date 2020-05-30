# frozen_string_literal: true

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  m = magazine.chars

  ransom_note.chars.all? do |c|
    i = m.index(c)
    m.delete_at(i) if i
    !i.nil?
  end
end
