# frozen_string_literal: true

require 'set'

# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  set = Set.new

  emails.each do |email|
    local_name, domain_name = email.split('@')
    local_name.delete!('.')
    local_name = local_name.split('+')[0]

    set << [local_name, domain_name].join('@')
  end

  set.size
end
